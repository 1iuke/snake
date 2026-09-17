# 已掌握 QFramework Query 的读取边界

学习者已完成 `ProgressSummaryQuery`，能通过 `send_query()` 返回组合数据快照，并理解 Query 不应暴露可修改的 Model 引用。后续可以把 Query 作为复杂读取的可选工具，而不需要为每个简单字段机械创建查询对象。

## Evidence

查询实现只读取 `ProgressModel` 并返回新的 Dictionary；学习者准确解释了快照对暴露范围和可变共享状态的保护作用。
