x = inputdlg('Enter fileName',...
             'Sample', [1 50]);
fnameInput = x{:}; 

set(filePre,'string',fnameInput);

disp('Transfer_scanA');
disp('continue mode');


global fileNtemp sheetN state

global tp 


fileNtemp=get(filePre,'string');

%% for test
% transfer_data_all=zeros(1,10);
%% for test


for ji=1:4
    cla(Ha_Output);cla(Ha_Transfer);
    %channel control 
    tp.changeToChannel(ji);
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
fileNtemp=[fileNtemp,'_rev'];
pause(5);

for ji=1:4
    cla(Ha_Output);cla(Ha_Transfer);
    %channel control 
    tp.changeToChannel(ji);
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
