disp('DisconnectSys');

global tp 


tp.changeToChannel(2);
pause(2);
tp.disconnect();
pause(0.5);

