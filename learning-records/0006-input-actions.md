# 已掌握 Input Map 动作抽象

学习者已创建移动、暂停和重开动作，并将键盘专用回调替换为设备通用的 `_unhandled_input()`。学习者理解玩法代码依赖语义动作而非设备事件，因此增加或重映射控制设备通常只需修改 Input Map。

## Evidence

`project.godot` 中存在六个输入动作，`main.gd` 不再包含具体 `KEY_*` 常量并通过 `event.is_action_pressed()` 响应动作；项目通过 Godot 4.7.2 加载检查。
