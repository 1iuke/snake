# 已掌握自定义 Signal 与 HUD 解耦

学习者已创建独立 `Hud.tscn`，通过带参数的 `score_changed` 自定义信号响应游戏状态变化，并理解信号应描述已发生的事实，而不是命令特定接收者执行动作；这使 UI、声音和成就等系统能独立订阅同一事件。

## Evidence

项目通过 Godot 4.7.2 运行校验，`SnakeGame.score_changed` 已连接到 HUD，主游戏没有直接引用 HUD；学习者准确解释了事件式命名对一对多解耦的意义。
