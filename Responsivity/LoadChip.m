disp('LoadChip');
global tp

set(hp_startA,'enable','off');
set(Hc_sys,'enable','off');
set(hp_set,'enable','off');
tp.changeToChannel(5,5);

% set(hp_startA,'enable','on');
set(Hc_sys,'enable','on');
set(hp_set,'enable','on');