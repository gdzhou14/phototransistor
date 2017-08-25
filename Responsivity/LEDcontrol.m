
global g_K_LED

% fprintf(g_K_LED,':sour:volt:rang:auto');

global state
    if(state==7)
            VLED=0;
     else 
            VLED=3;
    end

    %%LED control
    disp(VLED);
    
    fprintf(g_K_LED,'*RST');
    fprintf(g_K_LED,':SOUR:FUNC VOLT');
     fprintf(g_K_LED,':SOUR:VOLT:MODE FIXED');
    
    fprintf(g_K_LED,':SOUR:VOLT:RANG 20');
    
    fprintf(g_K_LED,[':SOUR:VOLT:LEV ',num2str(VLED)]);
    
    fprintf(g_K_LED,':SENS:CURR:PROT 100E-3');
    fprintf(g_K_LED,':SENS:FUNC "CURR"');
    fprintf(g_K_LED,':SENS:CURR:RANG 100E-3');
    fprintf(g_K_LED,':FORM:ELEM CURR');
     
    fprintf(g_K_LED,':OUTP ON');
    






