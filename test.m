% 测试生成
a = financalApp();
% a.UIFigure.Visible = 'off';
% 测试datePicker
a.DatePicker.Value

% 测试UItable
a.UITable.Data

% 测试类型DropDownClass
a.DropDownClass.Value

% 测试EditFieldValue
a.EditFieldValue.Value

% 测试EditFieldRemarks
a.EditFieldRemarks.Value

% 测试Model
disp('Model:')
a.ModelObj
disp('initialDataTable:')
a.ModelObj.initialDataTable
disp('initialDataTableFile:')
a.ModelObj.initialDataTableFile
disp('outDataTable:')
a.ModelObj.outDataTable
% 测试ControlerObj
a.ControllerObj