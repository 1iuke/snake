# 已掌握 AnimationPlayer 与 Tween 的选择边界

学习者已用 AnimationPlayer 创建 Food 的固定循环呼吸动画，并用 Tween 实现由得分事件触发、可中断重启的 HUD 弹跳反馈。学习者理解可视化、可复用的固定时间轴适合 AnimationPlayer，而目标与中断行为取决于运行时上下文的一次性动画适合 Tween。

## Evidence

项目中的 Food 包含自动循环的 `pulse` 关键帧动画，HUD 会终止旧 Tween 后创建新的分数和纪录反馈；项目通过 Godot 4.7.2 运行检查，学习者准确说明了两种工具的选择依据。
