 classdef controller < handle
    %controller 控制器，MVC中的C
    %   连接model和（finanicial）view
    % 2012-12-3 第一版
    
    properties
        ModelObj
        ViewObj
    end
    
    methods
        function obj = controller(inputArg1_view,inputArg2_model)
            %UNTITLED4 构造此类的实例
            %   此处显示详细说明
            obj.ModelObj = inputArg2_model;
            obj.ViewObj = inputArg1_view;
        end
        
        function callback_addRecord(obj,src,event)
            
            obj.ModelObj.addRecord(obj.ViewObj.DatePicker.Value,...
                                   obj.ViewObj.EditFieldValue.Value,...
                                   obj.ViewObj.DropDownClass.Value,...
                                   obj.ViewObj.EditFieldRemarks.Value);
            
        end
        function callback_updateRecord(obj,src,event)
            obj.ModelObj.updateRecord;
        end
    end
end

