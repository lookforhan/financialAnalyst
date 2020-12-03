classdef controller < handle
    %controller 控制器，MVC中的C
    %   连接model和（finanicial）view
    % 2012-12-3 第一版
    
    properties
        ModelObj
        ViewObj
    end
    
    methods
        function obj = controller(inputArg1,inputArg2)
            %UNTITLED4 构造此类的实例
            %   此处显示详细说明
            obj.ModelObj = inputArg1;
            obj.ViewObj = inputArg2;
        end
        
        function callback_addRecord(obj,src,event)
            obj.ModelObj.updateRecord;
        end
    end
end

