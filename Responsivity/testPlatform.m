classdef testPlatform
    properties
        PortNum;
        Port;
    end

    methods
        function tp = testPlatform(port)
            tp.PortNum = port;
            tp.Port = serial(tp.PortNum);
            set(tp.Port,'BaudRate', 115200,'DataBits',8,'StopBits',1,'Parity','none','FlowControl','none');
            fopen(tp.Port);
            pause(0.1);
        end
    end

    methods
        function connect(obj)
            fprintf(obj.Port,[char(6),char(1)],'async');
            pause(0.1);
        end

        function disconnect(obj)
            fclose(obj.Port);
            
        end
        
        function powerControl(obj,state)
            if(state == 1)
                fprintf(obj.Port,[char(6),char(1)], 'async');
                pause(0.3);
            else
                fprintf(obj.Port,[char(6),char(2)], 'async');
            end
        end
        
        function makeZero(obj)
            fprintf(obj.Port,char(3),'async');
            pause(0.1);
        end

        function offset_n(obj)
            fprintf(obj.Port,[char(5),char(1)],'async');
        end

        function offset_p(obj)
            fprintf(obj.Port,[char(5),char(2)],'async');
        end

        function changeToChannel(obj,channel)
            fprintf(obj.Port,[char(6),char(1)], 'async');
            pause(0.3);
            fprintf(obj.Port,[char(1),char(channel)],'async');
            pause(0.1);
            fprintf(obj.Port,[char(4),char(channel)],'async');
            pause(2);
            fprintf(obj.Port,[char(6),char(2)], 'async');
        end

        function setFilter(obj,filterstatus)
            fprintf(obj.Port,[char(6),char(1)], 'async');
            pause(0.3);
            switch filterstatus
            case 0
                fprintf(obj.Port,[char(2),' '],'async');
                pause(1.5);
                fprintf(obj.Port,[char(6),char(2)], 'async');
                return;
            case 1
                fprintf(obj.Port,[char(2),char(1)],'async');
                pause(1.5);
                fprintf(obj.Port,[char(6),char(2)], 'async');
                return;
            case 2
                fprintf(obj.Port,[char(2),char(2)],'async');
                pause(1.5);
                fprintf(obj.Port,[char(6),char(2)], 'async');
                return;
            case 3
                fprintf(obj.Port,[char(2),char(4)],'async');
                pause(1.5);
                fprintf(obj.Port,[char(6),char(2)], 'async');
                return;
            case 4
                fprintf(obj.Port,[char(2),char(5)],'async');
                pause(1.5);
                fprintf(obj.Port,[char(6),char(2)], 'async');
                return;
            case 5
                fprintf(obj.Port,[char(2),char(6)],'async');
                pause(1.5);
                fprintf(obj.Port,[char(6),char(2)], 'async');
                return;
            case 6
                fprintf(obj.Port,[char(2),char(7)],'async');
                pause(1.5);
                fprintf(obj.Port,[char(6),char(2)], 'async');
                return;
            end
        end
    end

    
    
end