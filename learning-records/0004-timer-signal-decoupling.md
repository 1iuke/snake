# 已理解 Timer Signal 的解耦关系

学习者已用 `MoveTimer.timeout` 替换逐帧计时，并理解信号发出者不知道、也不需要知道接收者；Timer 只声明事件发生，场景连接负责把事件交给回调。这为后续使用自定义 Signal 分离游戏状态与 UI 奠定基础。

## Evidence

项目中存在 `MoveTimer`、持久化的 `timeout` 连接和 `_on_move_timer_timeout()` 回调；学习者正确回答 Timer 不知道且不需要知道接收者。
