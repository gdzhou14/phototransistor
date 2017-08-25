set(Hc_sys,'enable','off');
set(hp_load,'enable','off');
set(hp_set,'enable','off');
x = inputdlg('Enter fileName',...
             'Sample', [1 50]);
fnameInput = x{:}; 

set(filePre,'string',fnameInput);

disp('Transfer_scanA');
disp('continue mode');


global fileNtemp sheetN state

global tp file1 file2


fileNtemp=get(filePre,'string');

%% for test
% transfer_data_all=zeros(1,10);
%% for test





for ji=1:4
    cla(Ha_Output);cla(Ha_Transfer);
    %channel control 
    tp.changeToChannel(ji,2);
    %%%%
    
    for jk=7:-1:0
        
    %filter control
    if jk<7
        tp.setFilter(jk);
        %%%%
    end
        
        
    %LED control 
    state=jk;
    LEDcontrol;
    %
    
        sheetN=num2str(100*ji+10*jk)
        
        
        
        
    %run to get transfer_data_all   
    pause(2);
    Transfer_scan;
    
    %save data
        saveA_transfer;
        pause(0.5);
         
         
    end
end

state=7;
LEDcontrol;
file1=[fileNtemp,'_data.xlsx'];
fileNtemp=[fileNtemp,'_rev'];
pause(5);
file2=[fileNtemp,'_data.xlsx'];

for ji=1:4
    cla(Ha_Output);cla(Ha_Transfer);
    %channel control 
    tp.changeToChannel(ji,2);
    %%%%
    
    pause(2);
    
    
    for jk=0:1:7
        
    %filter control
    if jk<7
        tp.setFilter(jk);
        %%%%
    end
        
        
    %LED control 
    state=jk;
    LEDcontrol;
    %
    
        sheetN=num2str(100*ji+10*jk)
        
        
        
        
    %run to get transfer_data_all   
     pause(2);
    Transfer_scan;
    
    %save data
        saveA_transfer;
        pause(0.5);
         
         
    end
end


state=7;
LEDcontrol;

% fclose(g_K2612A);delete(g_K2612A);clear g_K2612A;set(Hp_iv,'Foregroundcolor','k');


alldata;



set(Hc_sys,'enable','on');
set(hp_load,'enable','on');

set(hp_set,'enable','on');



