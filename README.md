# financialAnalyst

## 目的
建立一个开源软件，该软件可以记录财务流水，并生成分析报告。
## 开发进度
- 2020.12.18：在深圳开始重新开发，总结目前进度。完成版本1的界面设计，模型设计，需要controller设计，将软件连接起来。（未成功） 
- 2020.12.29：在公司，继续开发
## 材料与方法
### 材料
- MATLAB
### 方法
采用MCV模式构建程序。
- M 代表 Model，对于每个账户，采用table存储数据，未来使用数据库。
- C 代表 Controller
- V 代表 View，采用app designer 进行设计



## 计划
|版本|Description:View|Description:Model|
|---------|---------|----------|
|[1]|输入四项内容：1录入时间；2类型（支出/收入）；3数值；4备注| model 读取数据后总结为一个表|
|[2]|输入五项内容：增加输入账户|Model读入数据，根据账户建立不同的表，并将数据录入到对应账户的表中，并计算账户余额|
|[3]|View不变|生成分析表：1状况总结表；2资产负债表；3月度收支表；4年度收支表；5资产配比表  |

Notes:
1.调用侦听事件回调函数时出错，不一定是调用的命令的错误。要检查回调函数是否定义正确。
  - 在matlab中，定义回调函数有固定的格式，输入参数必须有三个：functionName(obj,src,data)