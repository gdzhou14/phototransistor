global tp pstate port_name


set(hp_load,'enable','off');
set(hp_startA,'enable','off');
set(hp_set,'enable','off');
if pstate==0
    pstate=1;
    set(Hc_sys,'string','DisC Sys');
    
    g_K1=instrfind('Type', 'serial');
try 
    fclose(g_K1);
end

    findcom;
    disp('ConnectSys');
port_name
    tp = testPlatform(port_name);



    tp.connect();
    pause(0.5);
    tp.makeZero();
    pause(5);
    tp.changeToChannel(1,2);
    pause(0.1);
    tp.powerControl(1);
    
    
else
    pstate=0;
    set(Hc_sys,'string','Connect Sys');
    
    tp.changeToChannel(2,2);
    pause(2);
    tp.disconnect();
    pause(0.5);

    
end


set(hp_load,'enable','on');
% set(hp_startA,'enable','on');
set(hp_set,'enable','on');