# 已完成 PackedScene 实例化

学习者已把原先由主脚本绘制的食物拆为独立 `food.tscn`，并通过 `preload()`、`instantiate()`、`add_child()` 将其接入运行时 SceneTree。项目已通过 Godot 4.7.2 无窗口加载检查，可继续学习节点信号与解耦。

## Evidence

项目中存在可独立加载的 `food.tscn` 与 `food.gd`；`main.gd` 保存 `PackedScene`、创建 Food 实例、加入子节点，并通过实例位置同步网格状态。
