# Godot 学习资源

## Knowledge

### 当前项目的一手资料

- [QFramework v0.4.1 本地文档](addons/qframework/doc/01.%20概述.md)
  与当前项目安装版本完全一致。用于确认 Architecture、Model、System、Utility、Command、Query、Event、EasyFSM 和 BindableProperty 的实际用法。
- [QFramework Architecture 源码](addons/qframework/framework/architecture/architecture.gd)
  当前版本最可靠的生命周期与 API 依据。用于确认注册、初始化顺序以及 `send_command()`、`send_query()` 的行为。
- [QFramework EasyEvent 源码](addons/qframework/framework/corekit/easy_event/scripts/event.gd)
  用于确认事件参数、注册、触发和注销语义；相关 BindableProperty 与 UnRegister 源码位于同一目录。
- [QFramework 官方 GitHub](https://github.com/liangxiegame/QFramework)
  作者维护的上游仓库，涵盖 Godot 与 Unity 版本。用于了解设计规范与更新；具体 API 仍以项目内 v0.4.1 源码为准。

### Godot 官方文档

- [Godot 4.7：核心概念概览](https://docs.godotengine.org/en/4.7/getting_started/introduction/key_concepts_overview.html)
  官方介绍 Node、Scene、SceneTree 和 Signal。用于建立 Godot 的核心心智模型。
- [Godot 4.7：循序渐进教程](https://docs.godotengine.org/en/4.7/getting_started/step_by_step/index.html)
  官方入门学习路径。用于逐步学习实例化、脚本、输入和信号。
- [Godot：编辑器界面](https://docs.godotengine.org/en/stable/getting_started/introduction/first_look_at_the_editor.html)
  官方编辑器区域与内置帮助说明。用于熟悉 Scene、FileSystem、Inspector 等面板。
- [Godot：Idle 与 Physics Processing](https://docs.godotengine.org/en/stable/tutorials/scripting/idle_and_physics_processing.html)
  官方游戏循环说明。用于区分 `_process()` 与 `_physics_process()`。
- [Godot 官方演示项目](https://github.com/godotengine/godot-demo-projects)
  官方维护的可运行示例。用于查阅成熟的节点组合和项目组织方式。
- [Godot 4.7：导出 GDScript 属性](https://docs.godotengine.org/en/4.7/tutorials/scripting/gdscript/gdscript_exports.html)
  官方 `@export` 与 Inspector 属性说明。用于把程序参数变成场景可配置数据。
- [Godot 4.7：Godot 中的面向对象原则](https://docs.godotengine.org/en/4.7/tutorials/best_practices/what_are_godot_classes.html)
  官方解释脚本与场景如何共同构成可复用对象。用于理解代码和场景各自的职责。
- [Godot 4.7：PackedScene 类](https://docs.godotengine.org/en/4.7/classes/class_packedscene.html)
  官方场景资源与 `instantiate()` API 说明。用于动态创建可复用场景实例。
- [Godot 4.7：使用信号](https://docs.godotengine.org/en/4.7/getting_started/step_by_step/signals.html)
  官方 Signal 入门与 Timer 示例。用于学习节点间的事件驱动协作。
- [Godot 4.7：输入示例与 Input Map](https://docs.godotengine.org/en/4.7/tutorials/inputs/input_examples.html)
  官方输入动作、事件与轮询说明。用于把设备按键映射为游戏语义动作。
- [Godot 4.7：手柄支持](https://docs.godotengine.org/en/4.7/tutorials/inputs/controllers_gamepads_joysticks.html)
  官方跨键盘与控制器输入指南。用于设计设备无关的控制方案。
- [Godot：Resources](https://docs.godotengine.org/en/stable/tutorials/scripting/resources.html)
  官方 Resource、序列化和自定义数据资产说明。用于创建 Inspector 可编辑的 `.tres` 配置。
- [Godot 4.7：用户界面](https://docs.godotengine.org/en/4.7/tutorials/ui/index.html)
  官方 Control、内容控件与布局容器入口。用于构建可适配窗口尺寸的 HUD 和菜单。
- [Godot：Size and anchors](https://docs.godotengine.org/en/stable/tutorials/ui/size_and_anchors.html)
  官方锚点与偏移说明。用于理解 Control 相对父级和视口的布局行为。
- [Godot 4.7：保存游戏](https://docs.godotengine.org/en/4.7/tutorials/io/saving_games.html)
  官方持久化、序列化和读写示例。用于理解应保存哪些运行时状态。
- [Godot：File system 与 user://](https://docs.godotengine.org/en/stable/tutorials/scripting/filesystem.html)
  官方项目资源路径与用户数据路径说明。用于区分只读游戏资源和可写用户存档。
- [Godot 4.7：动画功能介绍](https://docs.godotengine.org/en/4.7/tutorials/animation/introduction.html)
  官方 AnimationPlayer、轨道与关键帧教程。用于制作可视化编辑和循环播放的动画。
- [Godot 4.7：Tween](https://docs.godotengine.org/en/4.7/classes/class_tween.html)
  官方代码补间与生命周期说明。用于制作由运行时事件触发的一次性反馈动画。
- [Godot：暂停游戏与 Process Mode](https://docs.godotengine.org/en/stable/tutorials/scripting/pausing_games.html)
  官方 SceneTree 暂停和节点处理模式说明。用于区分业务状态与引擎级暂停。
- [Godot：GDScript enum 与 match](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)
  官方枚举与模式匹配语法。用于表达互斥游戏状态和集中状态转换。
- [Godot 4.7：使用 SceneTree](https://docs.godotengine.org/en/4.7/tutorials/scripting/scene_tree.html)
  官方运行时节点树、进入/退出顺序与场景切换说明。用于理解 Autoload、当前场景与 QFramework Architecture 的底层关系。
- [Godot 4.7：调试工具](https://docs.godotengine.org/en/4.7/tutorials/scripting/debug/index.html)
  官方 Output、Debugger、Profiler 与性能监视入口。用于从可复现证据定位脚本和运行时问题。
- [Godot 4.7：导出项目](https://docs.godotengine.org/en/4.7/tutorials/export/exporting_projects.html)
  官方 Export Templates、预设、Release 构建与命令行导出说明。用于生成和验证可分发版本。

## Wisdom (Communities)

- [Godot 官方论坛](https://forum.godotengine.org/)
  适合提交可复现问题、搜索引擎版本相关经验和接受项目结构反馈。
- [Godot 官方社区入口](https://godotengine.org/community/)
  官方列出的论坛、聊天和社交渠道。用于接触实际开发者的工作流与取舍。
- [QFramework GitHub Issues](https://github.com/liangxiegame/QFramework/issues)
  用于检索或提交可复现的框架问题；提问时应注明 Godot 版本、QFramework v0.4.1 与最小复现项目。

## Gaps

- 当前缺少针对 QFramework GDScript v0.4.1 的稳定自动化测试指南；后续应以框架源码和最小实验验证测试边界。
- 尚未选择 Godot 原生单元测试方案；待 Snake 出现可脱离场景测试的业务规则后再评估，避免提前引入测试框架。
