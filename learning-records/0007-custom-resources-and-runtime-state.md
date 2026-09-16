# 已掌握自定义 Resource 与运行时状态边界

学习者已创建并接入 `GameRules` 自定义 Resource，用 `.tres` 管理速度与计分规则，并理解共享静态配置与单局运行时状态必须分离：`score` 属于每局独立变化的状态，不应混入可能被多个实例共享的规则资产。

## Evidence

项目中的 `main.gd` 通过类型化导出属性引用 `GameRules`，`main.tscn` 引用 `default_rules.tres`，项目通过 Godot 4.7.2 运行检查；学习者准确解释了共享配置与运行时状态的职责差异。
