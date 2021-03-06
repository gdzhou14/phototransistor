disp('Move system');
set(hp_dLED,'enable','off');
set(hp_startA,'enable','off');

tp.changeToChannel(1,5);

open_K2612A;

Initial_set;%initial

Vgt_stop=str2double(get(Hc_vgstop,'String'));
Vdt_stop=str2double(get(Hc_vdstop,'String'));

fprintf(g_K2612A,['smua.source.levelv =',num2str(Vdt_stop)]);
fprintf(g_K2612A,['smub.source.levelv =',num2str(Vgt_stop)]);
fprintf(g_K2612A,'READING = smua.measure.i()');
fprintf(g_K2612A, 'print(READING)');
drain_current_string = fscanf(g_K2612A);
disp(drain_current_string);

pause(1);
% fclose(g_K2612A);delete(g_K2612A);clear g_K2612A;set(Hp_iv,'Foregroundcolor','k');


global state
state=1;
LEDc;
LEDcontrol;


set(hp_dLED,'enable','on');

set(hp_startA,'enable','on');