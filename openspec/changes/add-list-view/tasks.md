## 1. 创建 UITableView 并配置布局

- [x] 1.1 在 ViewController 中声明 UITableView 属性
- [x] 1.2 在 viewDidLoad 中创建 UITableView 实例并添加到 view
- [x] 1.3 使用 Auto Layout 将 UITableView 四边约束到 view 的四边

## 2. 配置数据源与代理

- [x] 2.1 声明数据数组属性，存储 "1" 到 "30" 共 30 个字符串
- [x] 2.2 让 ViewController 遵循 UITableViewDataSource 协议，实现 numberOfRowsInSection 返回 30 和 cellForRowAt 显示对应索引文字
- [x] 2.3 让 ViewController 遵循 UITableViewDelegate 协议，实现 heightForRowAt 返回 60

## 3. 实现点击弹窗交互

- [x] 3.1 实现 didSelectRowAt 方法，弹出 UIAlertController 显示对应行文字，包含一个"确定"按钮
- [x] 3.2 在 didSelectRowAt 中取消选中行的高亮状态
