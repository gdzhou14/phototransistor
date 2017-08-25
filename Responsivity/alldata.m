
close all;
clc;
%%%arrange data
col={ '+k' 'ob' 'og' 'or' '*b' '*g' '*r' 'k'};

x = inputdlg('Enter fileName',...
             'Sample', [1 50]);
fn = x{:}; 
file1=[fn,'_data.xlsx'];
file2=[fn,'_rev_data.xlsx'];
file3=['.\res\',fn,'_all_data.xlsx'];
out=[];
outrev=[];

for ji=1:4  
    figure(ji);
    for jk=7:-1:0
   
        sheetN=num2str(100*ji+10*jk)
        
        a=xlsread(['.\data\',file1],sheetN);
        arev=xlsread(['.\data\',file2],sheetN);
        
        [m n]=size(a);
        
        Vgs=a(1:(m+1)/2,1);
        Ids=a(1:(m+1)/2,2);
        Idsrev=arev(1:(m+1)/2,2);
        
        out=[out,a(1:(m+1)/2,2)];
        outrev=[outrev,arev(1:(m+1)/2,2)];
        
        subplot(1,2,1);
        plot(Vgs,Ids,col{jk+1});  
        hold on;
        
        subplot(1,2,2);
        plot(Vgs,Idsrev,col{jk+1});  
        hold on;
        pause(0.1);
    end
    
    
    
    saveas(gcf,['.\res\',fn,'_n',num2str(ji)],'fig');
    saveas(gcf,['.\res\',fn,'_n',num2str(ji)],'png');
    
    
end

out=[a(1:(m+1)/2,1),out];

outrev=[a(1:(m+1)/2,1),outrev];

xlswrite(file3,out,'0-1for');
xlswrite(file3,outrev,'1-0rev');

