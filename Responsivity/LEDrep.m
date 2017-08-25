state=0;

LEDc;

for i=1:100
    pause(1);
    state=7;
    LEDcontrol;
    pause(1);
    state=1;
    LEDcontrol;
end

LEDd;