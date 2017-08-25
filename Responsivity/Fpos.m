% disp('Fpos');
global tp
tp.offset_p();

fprintf(g_K2612A,'READING = smua.measure.i()');
fprintf(g_K2612A, 'print(READING)');
drain_current_string = fscanf(g_K2612A);
disp(drain_current_string);
