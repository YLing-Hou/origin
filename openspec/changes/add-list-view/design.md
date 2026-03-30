## Context

当前 `ViewController.swift` 是一个空白控制器，仅设置了红色背景。需要在其中添加一个 UITableView 来展示 30 项索引数据，并支持点击弹窗。

## Goals / Non-Goals

**Goals:**
- 在 ViewController 中实现一个完整的 UITableView 列表
- 列表数据为字符串 "1" 到 "30"，共 30 项
- 每行高度 60pt
- 点击行弹出 UIAlertController 显示对应文字

**Non-Goals:**
- 不涉及自定义 Cell 样式（使用系统默认样式）
- 不涉及网络请求或数据持久化
- 不涉及导航跳转

## Decisions

### 1. 使用 UITableView 而非 UICollectionView
**选择**: UITableView
**理由**: 需求是纯列表形式，UITableView 更简洁直接，无需配置 layout。

### 2. 数据源直接在 ViewController 中管理
**选择**: 在 ViewController 中通过数组属性存储数据，并直接实现 UITableViewDataSource/UITableViewDelegate
**理由**: 数据量小且固定（30项），无需引入额外的数据层抽象。

### 3. TableView 通过代码创建并用 Auto Layout 约束
**选择**: 在 viewDidLoad 中以编程方式创建 UITableView，使用 Auto Layout 铺满整个视图
**理由**: 当前项目 ViewController 已经是纯代码方式，保持一致。

### 4. 弹窗使用 UIAlertController
**选择**: UIAlertController（.alert 样式）+ 一个"确定"按钮
**理由**: 系统原生组件，满足简单提示需求，无需额外依赖。

## Risks / Trade-offs

- **风险**: 无显著风险，均为 UIKit 基础组件使用
- **取舍**: 未使用 MVVM 等架构模式 → 对于此简单需求，直接在 VC 中实现更简洁
