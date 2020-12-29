classdef model < handle
    %Model_1 finanicalApp的Model类
    %   版本1
    %   Model功能：
    %   1 读入View中输入的值，并生成一个表;
    %   2 检查是否存在初试文件
    
    properties
        initialDataTable % 初始数据表
        initialDataTableFile = 'finacialData.scv' % 初始数据表文件
        newDataTable % 新数据表 csv 格式
        outDataTable % 输出数据表 csv 格式
        tableVariableNames = {'Data','Value','Type','Remarks'};
        Date     % 时间
        Value    % 值，数额
        Type    % 类型
        Remarks  % 备注     
    end
    events
        updateData   % 更新数据
    end
    methods
        function obj = model()
            %model_1 构造此类的实例
            %   1 检查是否有初始文件
            %   2 如果有初始文件，则根据初始文件生成initialDataTable
            %   3 如果没有初始文件，则初始化initialDataTable
            if isfile(obj.initialDataTableFile)
                % 判断是否存在初始文件
%                 disp('initialDataTableFile exist')
%                 fileType = finfo(obj.initialDataTableFile); 
                obj.initialDataTable = readtable(obj.initialDataTableFile);
                % 如果存在，则令初始数据表从初始数据表文件读取数据
            else
                % 如果不存在初始数据表文件，则建立空白表
                obj.initialDataTable = table;  
            end
            obj.newDataTable = table;
            obj.outDataTable = table;
        end
        function addRecord(obj,Date,Value,Type,Remarks)
            % 增加记录
            obj.newDataTable.Date = Date;
            obj.newDataTable.Value = Value;
            obj.newDataTable.Type = Type;
            obj.newDataTable.Remarks = Remarks;
        end
        function updateRecord(obj)
            obj.outDataTable = [obj.initialDataTable;obj.newDataTable];
            notify(obj,'updateData');
        end
%         function delete(obj)
%            % 删除对象 
%         end

        
    end
end

