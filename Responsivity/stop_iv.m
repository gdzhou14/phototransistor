stop_yes=1;
fprintf(g_K2612A,'smua.source.levelv =0');%����Դ��ѹֵ����Ϊ0V
fprintf(g_K2612A,'smua.source.output = smua.OUTPUT_OFF');%�ر����
fprintf(g_K2612A,'smub.source.levelv =0');%����Դ��ѹֵ����Ϊ0V
fprintf(g_K2612A,'smub.source.output = smub.OUTPUT_OFF');%�ر����
fclose(g_K2612A);
set(Hp_iv,'Foregroundcolor','k');
clc;