## ADDED Requirements

### Requirement: 列表展示索引数据
ViewController SHALL 包含一个 UITableView，展示 30 行数据。每行的文本内容 SHALL 为该行索引的字符串形式（从 "1" 到 "30"）。

#### Scenario: 列表正确显示 30 项数据
- **WHEN** ViewController 加载完成
- **THEN** 页面显示一个包含 30 行的列表，第 N 行显示文字 "N"（N 从 1 到 30）

### Requirement: 每行高度固定为 60
UITableView 的每一行高度 SHALL 固定为 60pt。

#### Scenario: 行高度正确
- **WHEN** 列表渲染完成
- **THEN** 每一行的高度均为 60pt

### Requirement: TableView 铺满整个视图
UITableView SHALL 通过 Auto Layout 约束铺满 ViewController 的整个 view。

#### Scenario: TableView 充满屏幕
- **WHEN** ViewController 加载完成
- **THEN** UITableView 的四边与 ViewController.view 的四边对齐

### Requirement: 点击行弹出对应文字
用户点击列表中的任意一行时，系统 SHALL 弹出一个 UIAlertController（alert 样式），标题显示该行对应的文字内容，并包含一个"确定"按钮用于关闭弹窗。

#### Scenario: 点击第 5 行弹出 "5"
- **WHEN** 用户点击列表的第 5 行
- **THEN** 弹出一个 Alert，标题为 "5"，包含一个"确定"按钮

#### Scenario: 关闭弹窗
- **WHEN** 用户点击弹窗中的"确定"按钮
- **THEN** 弹窗关闭，回到列表界面
