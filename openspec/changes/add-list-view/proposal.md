## Why

ViewController 当前只有一个红色背景，缺少实际的界面内容。需要添加一个列表视图来展示基本的数据列表功能，并支持用户点击交互。

## What Changes

- 在 `ViewController` 中添加一个 `UITableView`，展示 30 行数据
- 每行显示对应索引的字符串（"1" 到 "30"）
- 每行高度固定为 60pt
- 点击任意行时弹出 `UIAlertController`，显示该行对应的文字内容

## Capabilities

### New Capabilities
- `index-list`: 在 ViewController 中提供一个固定 30 项的索引列表，支持点击弹窗交互

### Modified Capabilities
<!-- 无需修改现有能力 -->

## Impact

- 修改文件：`wb/wb/ViewController.swift`
- 新增依赖：无（仅使用 UIKit 内置组件）
