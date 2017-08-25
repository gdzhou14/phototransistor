global g_K_LED
disp('LEDc');
id=1;

% g_K_LED=instrfind('Type', 'gpib', 'BoardIndex', id, 'PrimaryAddress', 24, 'Tag', '');
% 
% if isempty(g_K_LED)
%     g_K_LED = gpib('CONTEC', 0, 24);
% else
%     fclose(g_K_LED);
%     g_K_LED = g_K_LED(1);
% end


g_K_LED=gpib('ni',id,24);
fopen(g_K_LED);
% set(Hp_iv,'Foregroundcolor','r');  

fprintf(g_K_LED,'*RST');
