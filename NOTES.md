# Teaching Notes

- 学习者具备 C#、C++、MATLAB、Python 和 Unity3D 经验。
- 可快速略过基本语法，优先使用 Unity 对照，但需防止把 GameObject/Component 模型生搬到 Godot。
- 主线项目：Godot 4.7 贪吃蛇。
- 2026-09-17：学习者已导入并启用 GDScript 版 QFramework v0.4.1；后续开发与进阶课程以该框架为基础。
- 第十五课 `0015-scene-switching.html` 暂缓，尚未开始，不计入已完成课程。
- 后续教学顺序：先明确 Godot 原生机制，再映射到 QFramework 的 Architecture / Model / System / Command / Query / Event，避免只会套框架模板。
- 2026-09-17：Mission 已扩展为独立开发、调试、组织并发布使用 QFramework 的中小型 Godot 2D 游戏。
- 已完成 QFramework 实践链：Architecture/Autoload → Model → Utility → Command → Event → Query → System → BindableProperty。
- 当前项目结构包含 `ProgressModel`、`StorageUtility`、`ProgressSystem`、`CompleteGameCommand`、`ProgressSummaryQuery`，并以 BindableProperty 驱动最高分 HUD。
- 已能按状态生命周期判断 Model 边界，按一次性/长期生命周期区分 Command 与注册对象，并理解 Query 返回快照的原因。
- System 与万能 Manager 的边界仍需后续间隔复习：System 按明确业务能力聚合，不直接吞并 UI、输入、音频和场景职责。
- 教学偏好：短课、直接在 Snake 中动手、完成后通过代码检查与闭卷问题验收；不重复通用编程基础。
