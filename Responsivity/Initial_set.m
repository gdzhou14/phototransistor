 
fprintf(g_K2612A,'reset()');%����2612A
 %channel b
 fprintf(g_K2612A,'smua.source.func = smua.OUTPUT_DCVOLTS');%���õ�ѹԴ
 fprintf(g_K2612A,'smua.source.levelv =0');%��ʼ����Դ��ѹֵ
 fprintf(g_K2612A,'smua.source.autorangei = smua.AUTORANGE_ON');%���õ�������
 fprintf(g_K2612A,'smua.measure.autorangei = smua.AUTORANGE_ON');%%%%%%%���ò��Ե�����Χ%%%%%
 fprintf(g_K2612A,'smua.source.output = smua.OUTPUT_ON');%����ǰ�����
 
 fprintf(g_K2612A,'smub.source.func = smub.OUTPUT_DCVOLTS');%���õ�ѹԴ
 fprintf(g_K2612A,'smub.source.levelv =0');%��ʼ����Դ��ѹֵ
 fprintf(g_K2612A,'smub.source.autorangei = smub.AUTORANGE_ON');%���õ�������
 fprintf(g_K2612A,'smub.measure.autorangei = smub.AUTORANGE_ON');
 fprintf(g_K2612A,'smub.source.output = smub.OUTPUT_ON');%����ǰ�����
 
