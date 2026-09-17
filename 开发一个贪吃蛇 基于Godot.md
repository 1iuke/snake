# 开发一个贪吃蛇 基于Godot

> 开发一个贪吃蛇 基于Godot

<details><summary>8 previous messages</summary>

> 我会用 `dev-workflow` 梳理并实现完整的 Godot 贪吃蛇，同时按 `karpathy-guidelines` 控制改动范围、明确可验证目标。先检查当前项目结构和 Godot 版本，再直接完成可运行版本。
>
> E:\Workspace\GameDevelop\Godot\snake 项目目录
>
> 收到，项目目录改为 `E:\Workspace\GameDevelop\Godot\snake`。我会在这里检查并开发，不改动刚才那个空目录。
>
> 当前是一个几乎空白的 Godot 项目。我按“单场景 + 单脚本”的简洁方案实现：网格移动、食物生成、计分/最高分、暂停、撞墙/撞身结束、键盘重开，并用 Godot 命令行加载项目做语法与资源校验。成功标准是项目能直接启动且主场景无解析错误。
>
> <details><summary>Created 2 files, edited a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/main.gd` (+182 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/main.tscn` (+6 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/project.godot` (+7 -1)
>
> </details>
>
> 核心玩法已经落盘，界面采用代码绘制，因此不依赖额外素材或字体文件。接下来我在做两类校验：检查场景/脚本引用是否完整，以及寻找本机 Godot 可执行文件进行无窗口启动测试。
>
> 无窗口校验发现了一个 Godot 4.7 的严格覆盖签名问题：`_unhandled_key_input` 的参数必须声明为基类 `InputEvent`。这是兼容性细节，我正在修正后重新跑完整加载测试。
>
> <details><summary>Edited a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/main.gd` (+6 -3)
>
> </details>
> </details>

Godot 贪吃蛇已开发完成，项目位于 `E:\Workspace\GameDevelop\Godot\snake`。

已实现：

- 方向键 / WASD 控制
- 随机食物、身体增长
- 撞墙与撞身体判定
- 分数、最高分与逐渐加速
- 空格暂停/继续
- 游戏结束后按 Enter 或 R 重开
- 自适应窗口比例
- 无额外素材依赖的代码绘制界面

主要文件：

- [main.gd](E:/Workspace/GameDevelop/Godot/snake/main.gd)
- [main.tscn](E:/Workspace/GameDevelop/Godot/snake/main.tscn)
- [project.godot](E:/Workspace/GameDevelop/Godot/snake/project.godot)

已使用 Godot 4.7.2 完成无窗口加载和运行测试，无脚本解析或场景加载错误。现在可直接在 Godot 编辑器中点击运行。

> [$teach](C://Users//liu//.codex//skills//teach//SKILL.md) 教学

<details><summary>2 previous messages</summary>

> 我会使用你指定的 `teach` 技能，围绕刚完成的 Godot 贪吃蛇做教学；先读取它的完整教学流程，再按其中方式讲解。
>
> `teach` 技能要求先明确学习目标，否则课程会变成泛泛讲代码。我先检查项目里是否已有学习档案；如果没有，就先用一个简短问题确定你的学习方向。
> </details>

你希望通过这个贪吃蛇项目重点学会什么？

例如：从零掌握 Godot、理解 GDScript、学习游戏循环与碰撞逻辑，或者最终能独立开发并发布小游戏。也请告诉我你目前是否接触过 Godot 或其他编程语言。

> 从零掌握 Godot；会c#、 C++ matlab python unity3d

<details><summary>5 previous messages</summary>

> 明白：目标是“从零掌握 Godot”，但你已有扎实编程与 Unity3D 背景，所以课程不会从变量、循环讲起，而会优先建立 Unity → Godot 的正确心智映射。`teach` 技能现在会据此创建学习任务档案，并产出第一节可交互 HTML 课：看懂当前贪吃蛇项目的 Scene、Node、Script 与生命周期。
>
> <details><summary>Searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/latest getting started nodes and scenes Godot 4.7 ...`
>
> </details>
>
> 第一课会刻意避免“照着敲完整游戏”，只完成一个可验证的小目标：你能用 Unity 的经验准确解释这个项目为什么能启动、节点怎样获得行为、`_ready/_process/_draw` 分别何时执行。课程材料以 Godot 4.7 官方文档为依据。
>
> <details><summary>Created 6 files</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/MISSION.md` (+19 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/NOTES.md` (+5 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+21 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/assets/course.css` (+49 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0001-read-the-snake-project.html` (+70 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/reference/unity-to-godot.html` (+17 -0)
>
> </details>
>
> 教学档案、Unity→Godot 速查表和第一课已经生成。`teach` 技能将你的已有经验记录为课程约束，所以后续会少讲语法常识，多讲 Godot 的节点组合、资源、信号和引擎生命周期。现在我会打开第一课供你直接学习。
> </details>

第一课已生成并在浏览器中打开：

[第一课：从三份文件读懂 Godot 项目](E:/Workspace/GameDevelop/Godot/snake/lessons/0001-read-the-snake-project.html)

配套资料：

- [Unity → Godot 速查表](E:/Workspace/GameDevelop/Godot/snake/reference/unity-to-godot.html)
- [学习目标](E:/Workspace/GameDevelop/Godot/snake/MISSION.md)
- [权威学习资源](E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md)

完成后回复“完成第一课”，并回答：

> Godot 的 Scene 与 Unity Prefab 最关键的关系是什么？

> **完成第一课；***Godot 的 Scene 包含了 Unity Prefab*

回答接近，但需要更准确：

> Godot 的 Scene 不是“包含 Unity Prefab”，而是统一承担了 Unity 中 Scene 和 Prefab 两种角色。

例如：

- `main.tscn` 可作为整个关卡运行，类似 Unity Scene。
- `Player.tscn` 可实例化到其他场景，类似 Unity Prefab。
- 两者在 Godot 中都是 `.tscn` 场景，没有两套独立机制。

请闭卷再回答一次：

**Godot 为什么不需要单独的 Prefab 系统？**

> 为什么

因为 Godot 的 Scene 本身就是“可保存、可嵌套、可重复实例化的节点树”。

同一个机制同时满足两种需求：

- `Main.tscn`：作为游戏主场景运行，类似 Unity Scene。
- `Snake.tscn`：多次放入其他场景，类似 Unity Prefab。
- `Food.tscn`：运行时通过 `instantiate()` 动态创建，也类似实例化 Prefab。

```gdscript
var food_scene = preload("res://food.tscn")
var food = food_scene.instantiate()
add_child(food)
```

关键结论：

> 在 Godot 中，任何 Scene 都可以被其他 Scene 实例化和嵌套，所以不需要再设计一套独立的 Prefab 系统。

现在可以这样回答刚才的问题：

**因为 Godot 的 Scene 已经支持保存、嵌套和重复实例化节点树，同时覆盖了 Unity Scene 与 Prefab 的用途。**

> 下一课

<details><summary>2 previous messages</summary>

> 进入第二课。上一课暴露出的关键点是：需要把 Unity 的“组件/Prefab 分类”替换成 Godot 的“节点树/可实例化场景”模型；第二课会继续建立这个差异，并让你亲手把一个 GDScript 参数暴露到 Inspector，形成“脚本定义能力、编辑器配置数据”的完整闭环。
>
> <details><summary>Created 2 files, edited a file, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 GDScript exported properties @export Inspector ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0001-prior-programming-experience.md` (+3 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0002-script-meets-inspector.html` (+63 -0)
>
> </details>
> </details>

第二课已生成并打开：

[第二课：让脚本与 Inspector 协作](E:/Workspace/GameDevelop/Godot/snake/lessons/0002-script-meets-inspector.html)

本课实践目标：

- 使用 `@export_range` 暴露蛇速参数
- 在 Inspector 中调节速度
- 理解脚本默认值与场景覆盖值
- 认识 `_init()` 与 `_ready()` 读取配置的差异

完成实验后告诉我：

1. `0.40` 和 `0.08` 的实际速度有何区别？
2. 脚本默认值和 Scene 保存的覆盖值，哪个优先？

> User context
>
> Images:
> - `~/AppData/Local/Temp/codex-clipboard-3cd1dbfa-7cb2-4ac5-9f26-99e4eca95aa1.png`

<details><summary>1 previous message</summary>

> 这不是脚本错误，而是 Godot 在提醒：你意外修改了场景根节点 `SnakeGame` 的 Transform。根节点被其他场景实例化时，位置通常由父场景决定，所以 Godot 建议根节点保持默认变换。我先检查 `main.tscn` 里具体改了哪一项，再告诉你精准恢复方式。
> </details>

你在拖动节点时误改了根节点变换。检查结果：

- Position：`(-25, -6)`
- Rotation：`-2.1547103`
- `start_speed = 0.4` 已正确保存

修复方法：

1. 点击“确定”关闭提示。
2. 选中根节点 `SnakeGame`。
3. 在 Inspector 展开 `Transform`。
4. 将 `Position` 设为 `(0, 0)`。
5. 将 `Rotation` 设为 `0`。
6. 保存场景。

根节点恢复默认变换后，警告就会消失。不要重置 `Start Speed`，它正是第二课需要保存的场景覆盖值。

这里也验证了课程知识：`main.gd` 默认速度是 `0.16`，但 `main.tscn` 保存了 `0.4`，所以运行时采用 `0.4`。

> **场景覆盖值优先**

<details><summary>2 previous messages</summary>

> 正确。你已经通过实际的 `.tscn` 数据验证了：脚本提供默认值，场景实例保存的覆盖值优先。我会按 `teach` 技能把这项已掌握内容写入学习记录；下一课将进入 Scene 实例化，用真实的 `Food.tscn` 理解 Godot 为什么不需要独立 Prefab 系统。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0002-exported-properties-and-scene-overrides.md` (+7 -0)
>
> </details>
> </details>

正确。

优先级是：

```text
Scene 保存的覆盖值 > Script 中的默认值
```

只有点击 Inspector 中的“还原”按钮，才会重新采用脚本默认值。这项知识已记录。

下一课主题：**创建并实例化 `Food.tscn`，真正理解 Godot Scene 如何同时承担 Prefab 的职责。**

> 下一课

<details><summary>2 previous messages</summary>

> 第三课会把当前“由 `main.gd` 直接画食物”的实现拆成真正的 `Food.tscn`，让你亲手完成 Scene 创建、`PackedScene` 预加载和 `instantiate()`。这是 Godot 的 Prefab 对应机制，也是后续学习 Signal 和场景解耦的基础。
>
> <details><summary>Created a file, edited a file, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 getting started creating instances PackedScene instantiate add_child ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+2 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0003-instantiate-food-scene.html` (+96 -0)
>
> </details>
> </details>

第三课已生成并打开：

[第三课：把食物变成可实例化的 Scene](E:/Workspace/GameDevelop/Godot/snake/lessons/0003-instantiate-food-scene.html)

本课将亲手完成：

- 创建独立的 `food.tscn`
- 使用 `preload()` 加载 `PackedScene`
- 使用 `instantiate()` 创建节点
- 使用 `add_child()` 加入 SceneTree
- 在 Remote 场景树中观察运行时实例

完成后回复“Food 已实例化”，并回答：

> `instantiate()` 与 `add_child()` 分别做了什么？

> **Remote** 场景树 怎么看

先运行游戏，`Remote` 才会出现：

1. 在 Godot 按 **F6** 或 **F5** 运行游戏。
2. 不要关闭游戏，切回 Godot 编辑器。
3. 查看左上角的 **Scene（场景）** 面板。
4. 场景树上方会出现两个切换项：
   - **Local**：编辑器中保存的场景
   - **Remote**：游戏运行时真实的节点树
5. 点击 **Remote**。
6. 展开节点，应该能看到：

```text
root
└── SnakeGame
    └── Food
```

如果没有看到 `Food`：

- 确认游戏仍在运行。
- 确认执行过 `add_child(food_visual)`。
- 展开 `root` 和 `SnakeGame` 左侧的小箭头。
- 如果使用嵌入式游戏窗口，可直接点击编辑器顶部的 **Editor** 标签切回编辑器，游戏不必停止。

`Local` 看的是磁盘中的 `.tscn` 内容；`Remote` 看的是运行时经过 `instantiate()`、`add_child()` 后的实际 SceneTree。

> 下一课

<details><summary>3 previous messages</summary>

> 进入下一课前，我先检查你是否已经把 `Food.tscn`、`instantiate()` 和 `add_child()` 实际接入项目。若实现正确，我会记录这项掌握情况，并把第四课建立在真实代码之上。
>
> 检查通过：你已经创建 `food.tscn`，成功预加载、实例化并加入 `SnakeGame`，原来的重复绘制也已移除。第三课目标实际完成。第四课我会用 `Timer.timeout` 信号替换手写的 `_process(delta)` 累加器，让你掌握 Godot 的事件驱动节点协作。
>
> <details><summary>Created 2 files, edited a file, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 getting started using signals connect timeout Timer ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+2 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0003-packed-scene-instantiation.md` (+7 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0004-timer-signals.html` (+99 -0)
>
> </details>
> </details>

第四课已生成并打开：

[第四课：用 Timer Signal 驱动蛇](E:/Workspace/GameDevelop/Godot/snake/lessons/0004-timer-signals.html)

本课将：

- 添加 `Timer` 子节点
- 通过 Signals 面板连接 `timeout`
- 使用 `$MoveTimer` 和 `@onready`
- 删除手写的 `_process(delta)` 计时循环
- 理解信号如何降低节点耦合

完成后回复“Timer 已接管移动”，并回答：

> Timer 是否知道谁接收了 `timeout`？为什么？

> **Timer 已接管移动**

<details><summary>1 previous message</summary>

> 我先验证 `MoveTimer` 节点、信号连接和代码改动是否完整，再记录第四课成果。你还没有回答本课的检索问题，因此我会在验证后保留一道简短确认题。
> </details>

Timer 已成功接入，场景连接和脚本解析都正常：

```text
MoveTimer.timeout → _on_move_timer_timeout() → step_game()
```

不过建议修正三处：

1. `MoveTimer` 的 **Autostart** 当前开启了。请关闭，因为 `new_game()` 已调用 `move_timer.start(start_speed)`。
2. 删除两行旧代码，不要只注释：

```gdscript
#var move_timer := 0.0
#var move_interval := start_speed
```

3. 将 `move_timer.wait_time = ...` 移入 `if ate_food:`，放在 `score += 10` 后面。否则加速会延迟一步，而且每一步都会重复赋值。

另外，根节点仍有很小的旋转值：

```text
rotation = -0.0011362133
```

请把 `SnakeGame` 的 Rotation 重置为 `0`。

最后闭卷回答：

> Timer 是否知道哪个节点接收了 `timeout`？为什么？

> 不知道，不需要

<details><summary>2 previous messages</summary>

> 正确：Timer 不知道、也不需要知道接收者。它只负责发出 `timeout`，连接关系由 Scene 保存，接收方决定如何响应。这正是 Signal 降低耦合的核心，我会把这项理解记录下来。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0004-timer-signal-decoupling.md` (+7 -0)
>
> </details>
> </details>

完全正确。

```text
Timer：只负责发出 timeout
连接关系：决定通知谁
接收者：决定如何响应
```

因此 Timer 可以在完全不了解贪吃蛇逻辑的情况下复用。

第四课已完成并记录。下一课将创建自定义 `score_changed` 信号，把计分状态与界面绘制解耦。

> 下一课

<details><summary>2 previous messages</summary>

> 第五课会创建独立 `Hud.tscn`，由主游戏发出 `score_changed(score, best)` 自定义信号，HUD 只订阅并显示数据。这样你会完成第一条真正的跨场景通信链，并看到“游戏逻辑不直接操作 UI”的结构。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0005-custom-signals-and-hud.html` (+147 -0)
>
> </details>
> </details>

第五课已生成并打开：

[第五课：用自定义 Signal 解耦 HUD](E:/Workspace/GameDevelop/Godot/snake/lessons/0005-custom-signals-and-hud.html)

本课将完成：

- 创建独立的 `Hud.tscn`
- 声明带参数的 `score_changed` 信号
- 连接不同场景中的节点
- 将计分状态与界面绘制解耦
- 分辨“事件描述”与“命令调用”

完成后回复“HUD 已解耦”，并回答：

> 为什么信号应该叫 `score_changed`，而不是 `update_hud`？

> **HUD 已解耦**

<details><summary>1 previous message</summary>

> 我会先检查 `Hud.tscn`、自定义信号、连接方向和旧 HUD 是否移除，并运行 Godot 加载校验。通过后还需要你回答本课的一句闭卷题，才能确认不是只完成了机械操作。
> </details>

HUD 解耦实现正确，并通过 Godot 4.7.2 运行验证：

```text
SnakeGame.score_changed
    → Hud._on_snake_game_score_changed()
    → queue_redraw()
    → Hud._draw()
```

主游戏没有直接引用 `$Hud`，旧的 `draw_header()` 也已移除。

最后闭卷回答：

> 为什么信号应该叫 `score_changed`，而不是 `update_hud`？

> 信号描述已发生的事实，而不是命令特定对象执行动作；这样 UI、声音和成就系统都能按需响应。

<details><summary>2 previous messages</summary>

> 完全正确。你已经抓住事件命名与解耦的核心：发出者只公布领域事实，不指定接收者的行为。我会把自定义信号与 HUD 解耦记录为已掌握。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0005-custom-signals-and-hud-decoupling.md` (+7 -0)
>
> </details>
> </details>

正确，回答完整。第五课已完成并记录。

你现在已经掌握：

- 内置信号与自定义信号
- 带参数的事件传递
- 一对多订阅
- 游戏状态与 UI 解耦
- 用“已发生的事实”命名事件

下一课将学习 **Input Map**：把硬编码的键位判断改成可配置动作，并同时支持键盘与手柄。

> 下一课

<details><summary>2 previous messages</summary>

> 第六课将把 `_unhandled_key_input()` 中的具体键位移出代码，改为 Godot 的 Input Map 动作。完成后，同一个 `move_up` 动作可以同时绑定方向键、W 和手柄方向，游戏逻辑不再关心具体设备。
>
> <details><summary>Created a file, edited a file, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 Input Map actions Input.is_action_pressed is_action_just_pressed ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0006-input-map.html` (+114 -0)
>
> </details>
> </details>

第六课已生成并打开：

[第六课：用 Input Map 抽象控制](E:/Workspace/GameDevelop/Godot/snake/lessons/0006-input-map.html)

本课将完成：

- 创建六个语义输入动作
- 同时绑定方向键、WASD 与手柄
- 用 `_unhandled_input()` 替换键盘专用回调
- 区分事件输入与持续轮询
- 理解 UI 消费输入事件的顺序

完成后回复“Input Map 已接入”，并回答：

> 增加一个新的控制设备时，为什么通常不需要修改玩法代码？

> 代码依赖语义动作而非设备事件

<details><summary>1 previous message</summary>

> 回答正确：玩法代码依赖 `move_up` 这类语义动作，具体设备只需要在 Input Map 中映射。我再检查项目是否已完成六个动作及回调替换；若实现也通过，就记录第六课完成。
> </details>

概念回答正确，但代码还差一个关键修改：

目前函数仍是：

```gdscript
func _unhandled_key_input(event: InputEvent) -> void:
```

它只接收键盘事件，因此手柄映射不会触发。请改为：

```gdscript
func _unhandled_input(event: InputEvent) -> void:
```

函数体保持不变。六个 Input Map 动作均已正确创建，项目也没有解析错误。

修改后：

- 键盘和手柄事件都能进入该函数。
- 玩法代码只判断语义动作。
- 新设备只需配置 Input Map，无需修改方向逻辑。

> 下一课

<details><summary>2 previous messages</summary>

> 我先确认你已把回调改为 `_unhandled_input()`；通过后记录第六课。第七课将学习 Godot `Resource`：把速度、加速率和得分规则抽成可复用的 `.tres` 数据资产，对应你熟悉的 Unity `ScriptableObject`。
>
> <details><summary>Created 2 files, edited a file, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 custom resources class_name Resource export create tres inspector ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+2 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0006-input-actions.md` (+7 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0007-custom-resources.html` (+116 -0)
>
> </details>
> </details>

第七课已生成并打开：

[第七课：把游戏规则变成 Resource](E:/Workspace/GameDevelop/Godot/snake/lessons/0007-custom-resources.html)

本课将完成：

- 创建自定义 `GameRules` 类型
- 保存 `.tres` 配置资产
- 通过 Inspector 引用 Resource
- 创建默认与快速两套规则
- 理解 Resource 的共享引用语义
- 对照 Unity `ScriptableObject`

完成后回复“GameRules 已接入”，并回答：

> 为什么当前 `score` 不适合放进共享的 `GameRules`？

> Inspector 中会出现 **Rules** 属性。 没有

<details><summary>1 previous message</summary>

> `Rules` 不出现通常有三类原因：`game_rules.gd` 没有成功注册、`main.gd` 的导出声明未生效，或编辑器还未重新载入脚本。我先检查实际文件和 Godot 解析错误，再给你对应修复。
> </details>

原因找到了：`main.gd` 第 90–92 行缺少右括号，脚本无法解析，因此 Inspector 无法读取 `@export var rules: GameRules`。

改成：

```gdscript
move_timer.wait_time = maxf(
    rules.min_speed,
    rules.start_speed - score * rules.speed_up_per_point
)
spawn_food()
```

然后：

1. 保存 `main.gd`。
2. 确认底部 Debugger 不再显示红色解析错误。
3. 重新选中 `SnakeGame`，Inspector 就会显示 `Rules`。
4. 将 `default_rules.tres` 拖入该属性。

还有两项顺手修正：

```gdscript
score += rules.score_per_food
```

目前仍是 `score += 10`。

另外 `SnakeGame` 被设成了：

```text
visible = false
```

请在 Scene 面板点击根节点旁的眼睛图标恢复可见，否则游戏画面会隐藏。

> 5. 用 Resource 替换硬编码
>   不执行

我按“运行后规则未生效”来排查：检查 `main.gd` 是否所有硬编码都已替换、`main.tscn` 是否真正引用了 `.tres`，以及当前运行时错误。

> 下一课

<details><summary>5 previous messages</summary>

> 第七课代码已接入并通过运行校验；`default_rules.tres` 没显示字段文本是正常的——当前取值与脚本默认值相同，Godot 不必重复序列化。第八课将把 HUD 从手写 `_draw()` 改为真正的 `Control + Container + Label` UI，学习 Godot 的布局系统与窗口自适应。第七课的闭卷题仍保留，之后需要补答。
>
> <details><summary>Created a file, edited a file, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 UI size anchors containers Control nodes ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0008-control-ui-layout.html` (+111 -0)
>
> </details>
>
> GameRules 是可共享的静态规则；score 是每局独立变化的运行时状态，混入后会造成职责和共享语义混乱。
>
> 回答正确，而且区分得很完整：`GameRules` 是可共享的配置资产，`score` 是单局运行时状态；把后者放入共享 Resource 会让不同实例意外共享状态。我会记录第七课已掌握；刚生成的第八课继续学习 Control UI。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0007-custom-resources-and-runtime-state.md` (+7 -0)
>
> </details>
> </details>

回答正确，第七课已完成并记录。

第八课也已生成：

[第八课：用 Control 构建自适应 HUD](E:/Workspace/GameDevelop/Godot/snake/lessons/0008-control-ui-layout.html)

本课会把手写 `_draw()` HUD 替换为：

```text
Control
└── MarginContainer
    └── HBoxContainer
        ├── Label
        ├── Spacer
        ├── ScoreLabel
        └── BestLabel
```

完成后回答：

> 为什么 Container 的直接子节点不应该依靠手动拖动来定位？

> 选中 Hud，在 2D 顶部 **Layout** 菜单选择 **Full Rect**。

<details><summary>1 previous message</summary>

> 这一步只有在 `Hud` 已经成功改成 `Control`、并且处于 **2D 工作区**时才会显示布局工具。我先检查你当前 `hud.tscn` 的根节点类型，判断是菜单位置问题还是类型尚未切换。
> </details>

检查结果：`Hud` 已经是 `Control`，但还没有应用 Full Rect：

```text
anchors_preset = 0
```

操作方法：

1. 打开 `hud.tscn`。
2. 点击顶部的 **2D** 工作区。
3. 在场景树中选中根节点 `Hud`。
4. 查看 2D 视口上方工具栏，点击 **Layout/布局**。
   - 窗口较窄时，它可能收进右侧的 `⋮` 菜单。
5. 选择 **Anchors Preset/锚点预设 → Full Rect/全矩形**。

如果仍找不到，可在 Inspector 手动设置：

```text
Layout → Anchors
Left   = 0
Top    = 0
Right  = 1
Bottom = 1

Layout → Offsets
Left   = 0
Top    = 0
Right  = 0
Bottom = 0
```

设置成功后，`hud.tscn` 中通常会出现：

```text
anchors_preset = 15
anchor_right = 1.0
anchor_bottom = 1.0
grow_horizontal = 2
grow_vertical = 2
```

这就等价于 Full Rect。

> Container 会根据最小尺寸、Size Flags 和主题间距重新计算直接子节点的位置，手动矩形值会被覆盖。

<details><summary>1 previous message</summary>

> 回答正确：Container 是布局所有者，直接子节点的手动位置会在下一次布局计算时被覆盖。我先验证 Control HUD 的节点树、唯一名称引用和信号回调；通过后记录第八课成果。
> </details>

回答正确，Control HUD 结构也已运行通过。不过还有三处需要修正：

1. `Hud → Custom Maximum Size` 被误设为 `(1, 1)`，请恢复为 `(0, 0)`。
2. `Hud → Mouse → Filter` 设为 **Ignore**，避免全屏 HUD 截获输入。
3. `Margin` 目前只有左边距 `60`，请补上：

```text
Theme Overrides → Constants → Margin Right = 60
```

其余均正确：

- Hud 已铺满视口
- Container 层级正确
- `%ScoreLabel`、`%BestLabel` 唯一名称正确
- HUD 不再使用 `_draw()`
- 项目通过 Godot 4.7.2 运行检查

修正后，第八课即可完整验收。

> 将 Gap 删除

删除 `Gap` 后，用 `HBoxContainer` 的统一间距代替：

1. 在场景树选中 `Gap`。
2. 按 `Delete` 删除。
3. 选中 `Row`（`HBoxContainer`）。
4. 在 Inspector 找到：

```text
Theme Overrides
└── Constants
    └── Separation = 40
```

5. 保存 `hud.tscn` 并运行。

区别：

- `Separation`：所有相邻子节点使用相同间距。
- `Gap`：只在 Score 与 Best 之间制造指定空隙。
- `Spacer`：占用所有剩余空间，把右侧内容推到右边。

当前简单 HUD 使用 `Separation` 更整洁。

> 检查

<details><summary>1 previous message</summary>

> 我会按 `dev-workflow` 的代码审查流程检查本课 HUD 配置，并顺带运行项目验证信号、Resource、输入与场景加载是否仍正常；重点只报告会影响行为的问题。
> </details>

## 检查结果

项目可正常解析和启动，但第八课 HUD 尚未通过完整验收。

### 🔴 HUD 实例存在位置偏移

`main.tscn` 给 Hud 实例保存了额外偏移：

```text
offset_left = 194
offset_top = 9
offset_right = 194
offset_bottom = 9
```

这会让 Full Rect 整体偏移。选中 `main.tscn` 中的 Hud，执行 **Layout → Full Rect** 并确保四个 Offset 都是 `0`。

### 🟡 HUD 配置仍有三处遗漏

在 `hud.tscn` 中：

- `Custom Maximum Size` 仍是 `(1, 1)`，应恢复为 `(0, 0)`。
- `Mouse Filter` 未设为 `Ignore`。
- `Margin Right` 尚未设为 `60`。

### 🟡 Input Map 尚未真正支持手柄

六个动作目前只绑定了键盘事件，没有 Joypad 事件。键盘功能正常，但课程中“添加新设备无需修改玩法代码”的架构已完成，手柄映射仍需补充。

### 🟡 底部提示文字乱码

`main.gd:169` 当前包含：

```gdscript
"ARROWS / WASD   鈥?  SPACE PAUSE"
```

应改为：

```gdscript
"ARROWS / WASD   •   SPACE PAUSE"
```

### 已通过

- `Gap` 已删除。
- `Row` 已设置 `Separation = 40`。
- Control/Container 节点结构正确。
- HUD 唯一名称引用正确。
- Signal、Resource、Timer 和 Input Action 均无解析错误。
- Godot 4.7.2 启动测试通过。

::code-comment{title="[P1] Hud 实例偏离 Full Rect" body="Hud 实例保存了 194px 水平和 9px 垂直偏移，导致自适应布局整体错位。重新应用 Full Rect，并将四个 Offset 清零。" file="E:/Workspace/GameDevelop/Godot/snake/main.tscn" start=14 end=18 priority=1}

::code-comment{title="[P2] Hud 最大尺寸仍为 1×1" body="根 Control 的 Custom Maximum Size 仍是 (1, 1)。请恢复为 (0, 0)，并将 Mouse Filter 设置为 Ignore。" file="E:/Workspace/GameDevelop/Godot/snake/hud.tscn" start=5 end=12 priority=2}

::code-comment{title="[P2] 缺少右侧边距" body="MarginContainer 仅配置了左侧和顶部边距，右侧内容无法保持预期的 60px 边距。补充 margin_right = 60。" file="E:/Workspace/GameDevelop/Godot/snake/hud.tscn" start=14 end=22 priority=2}

::code-comment{title="[P2] 底部文字编码损坏" body="分隔符已变成乱码“鈥?”，游戏界面会原样显示。将其恢复为圆点或普通 ASCII 分隔符。" file="E:/Workspace/GameDevelop/Godot/snake/main.gd" start=169 priority=2}

> Margin Right 尚未设为 60。 在哪

在 `hud.tscn` 中设置：

1. 打开 `hud.tscn`。
2. 在场景树选择 `Margin` 节点，不是 `Hud` 或 `Row`。
3. 在右侧 Inspector 展开：

```text
Theme Overrides
└── Constants
    └── Margin Right
```

4. 勾选 `Margin Right` 左侧的复选框。
5. 将数值设为 `60`。
6. 保存场景。

完整边距应为：

```text
Margin Left   = 60
Margin Top    = 35
Margin Right  = 60
Margin Bottom = 0
```

如果 Inspector 是中文，对应位置通常是：

```text
主题覆盖
└── 常量
    └── 右边距
```

注意：这是 `MarginContainer` 的主题常量，不在普通的 `Layout → Offsets` 中。

> main.tscn 的hud 未居中

<details><summary>1 previous message</summary>

> 我检查 `main.tscn` 中 Hud 实例的锚点、偏移，以及 `hud.tscn` 根 Control 的尺寸配置，定位它为什么没有覆盖并对齐整个视口。
> </details>

原因是 `main.tscn` 中的 Hud 实例仍保存着位置覆盖：

```text
Left   = 194
Top    = 9
Right  = 194
Bottom = 9
```

虽然 `hud.tscn` 本身已正确铺满视口，但这些实例覆盖值把它整体向右、向下移动了。

修复：

1. 打开 `main.tscn`。
2. 选中场景树中的 `Hud` 实例。
3. 在 Inspector 展开：

```text
Layout
└── Transform / Offsets
```

4. 将四项全部设为：

```text
Left   = 0
Top    = 0
Right  = 0
Bottom = 0
```

也可以点击每个属性右侧的“还原”箭头，恢复 `hud.tscn` 中的原始值。

注意：Hud 不需要“居中”，而应该铺满整个视口；内部的 `MarginContainer` 和 `HBoxContainer` 再负责排列文字。正确结果是 Hud 的矩形覆盖整个 720×800 画面。

> 下一课

<details><summary>1 previous message</summary>

> 我先复查 HUD 实例偏移和本课配置；通过后记录第八课。第九课将实现最高分持久化，学习 `user://`、`ConfigFile`、加载/保存时机以及导出后可写数据与 `res://` 资源的区别。
> </details>

第八课还未通过验收，暂不进入下一课。`main.tscn` 中 Hud 偏移反而变成了：

```text
Left   = 362
Top    = 29
Right  = 362
Bottom = 29
```

这说明你选择了“居中”预设，而不是“全矩形”。

请执行：

1. 打开 `main.tscn`。
2. 选中其中的 `Hud` 实例。
3. 在 Inspector 展开 `Layout → Transform`。
4. 手动将四个 Offset 全部输入 `0`：

```text
Left   = 0
Top    = 0
Right  = 0
Bottom = 0
```

5. 不要选择 Center/居中。
6. 保存场景。

正确保存后，`main.tscn` 中不应再出现四行 `offset_*`。回复“已清零”，我检查通过后继续下一课。

> 下一课

<details><summary>2 previous messages</summary>

> 可以继续。第八课的 Hud 实例偏移会作为待修项保留，不阻塞后续概念学习。第九课实现最高分持久化，重点是 `user://` 与 `ConfigFile`；我会让它独立于 HUD 布局，避免两个问题互相干扰。
>
> <details><summary>Created a file, edited a file, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 ConfigFile save load user:// ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0009-persist-high-score.html` (+112 -0)
>
> </details>
> </details>

第九课已生成并打开：

[第九课：让最高分跨越游戏重启](E:/Workspace/GameDevelop/Godot/snake/lessons/0009-persist-high-score.html)

本课将学习：

- `res://` 与 `user://` 的职责区别
- 使用 `ConfigFile` 读写数据
- 正确安排加载与保存时机
- 区分“首次运行无文件”和真实读取错误
- 查看 Godot 的用户数据目录
- 测试存档损坏的失败分支

完成后回复“最高分已持久化”，并回答：

> 为什么玩家数据应该写入 `user://`，而不是 `res://`？

第八课遗留的 Hud 实例 Offset 仍需清零，但不影响本课持久化逻辑。

> 还有多少课

按照“能够独立开发并发布 Godot 2D 小游戏”的目标，核心课程计划共 **14 课**。目前进行到第 9 课，还剩 **5 课**：

10. Tween、AnimationPlayer 与音效反馈
11. 游戏状态管理：开始、运行、暂停、结束
12. 调试、Profiler、错误定位与性能检查
13. 项目整理、场景职责与最终代码重构
14. Windows 导出、发布与完整验收

完成这 14 课后，你将具备独立开发小型 Godot 2D 游戏的基础能力。之后可按方向进入进阶专题，例如：

- TileMap 与关卡制作
- CharacterBody2D 与物理碰撞
- 2D 动画状态机
- Shader
- 3D 开发
- C# Godot
- 联机与存档系统

课程数量会根据练习表现微调，但不会为了凑课数重复基础内容。

> **最高分已持久化**

<details><summary>3 previous messages</summary>

> Stream error
>
> Reconnecting 5/5
> request timed out
>
> 我会检查加载顺序、保存错误处理、`user://` 路径和实际生成的配置文件，再运行项目验证。通过后还需要你回答本课的闭卷问题，确认路径选择的原因。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Select-String -Path 'main.gd' -Pattern 'SAVE_PATH|load_high_score|save_high_score|ConfigFile|func _ready|func finish_game' -Context 1,12; $userPath = Join-Path $env:APPDATA 'Godot\app_userdata\Snake'; if (Test-Path $userPath) { Get-ChildItem -LiteralPath $userPath -Force | Select-Object Name,Length,LastWriteTime; if (Test-Path (Join-Path $userPath 'scores.cfg')) { Get-Content -Raw -LiteralPath (Join-Path $userPath 'scores.cfg') } }`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --quit-after 30`
>
> </details>
> </details>

最高分持久化已通过验证：

- `load_high_score()` 在 `new_game()` 前执行。
- 游戏结束时调用 `save_high_score()`。
- 读写错误已区分处理。
- 项目运行无错误。
- 实际文件已生成：

```ini
[scores]

high_score=50
```

当前存档位置为：

```text
%APPDATA%\Godot\app_userdata\Snake\scores.cfg
```

有两行未完成的挑战代码：

```gdscript
const SAVE_STATS_PATH := "user://stats.cfg"
var games_played := int(config.get_value("stats", "games_played", 0))
```

它们目前没有实际作用。若不继续做累计局数功能，建议删除；若继续做，应将局数写回同一个 `scores.cfg`，无需单独创建 `stats.cfg`。

最后闭卷回答：

> 为什么玩家数据应该写入 `user://`，而不是 `res://`？

> const SAVE_STATS_PATH := "user://stats.cfg"
> var games_played := int(config.get_value("stats", "games_played", 0)) 怎么加

建议把最高分和游戏局数保存在同一个 `scores.cfg`，不需要 `SAVE_STATS_PATH`。

删除：

```gdscript
const SAVE_STATS_PATH := "user://stats.cfg"
```

在 `high_score` 附近添加成员变量：

```gdscript
var score := 0
var high_score := 0
var games_played := 0
```

将加载函数改名并扩展为：

```gdscript
func load_progress() -> void:
	var config := ConfigFile.new()
	var error := config.load(SAVE_PATH)

	if error == ERR_FILE_NOT_FOUND:
		return
	if error != OK:
		push_warning("Could not load progress: %s" % error)
		return

	high_score = maxi(
		0,
		int(config.get_value("scores", "high_score", 0))
	)
	games_played = maxi(
		0,
		int(config.get_value("stats", "games_played", 0))
	)
```

将保存函数改为：

```gdscript
func save_progress() -> void:
	var config := ConfigFile.new()
	config.set_value("scores", "high_score", high_score)
	config.set_value("stats", "games_played", games_played)

	var error := config.save(SAVE_PATH)
	if error != OK:
		push_error("Could not save progress: %s" % error)
```

在 `_ready()` 中改为：

```gdscript
load_progress()
new_game()
```

在 `finish_game()` 中，每局结束时增加计数并保存：

```gdscript
func finish_game() -> void:
	move_timer.stop()
	game_over = true
	high_score = maxi(high_score, score)
	games_played += 1
	save_progress()
	queue_redraw()
```

运行并结束一局后，`scores.cfg` 应变成：

```ini
[scores]

high_score=50

[stats]

games_played=1
```

这里把“撞墙或填满棋盘后结束”定义为完成一局。重开游戏不增加计数。

> 下一刻

<details><summary>2 previous messages</summary>

> 我按“下一课”继续。第十课会给游戏增加反馈层：Food 使用 `AnimationPlayer` 循环呼吸，分数更新使用 `Tween` 弹跳，并通过 `AudioStreamPlayer` 接入吃食物音效。它会重点区分“可编辑、可复用动画”与“一次性代码动画”。
>
> <details><summary>Created a file, edited a file, ran 2 commands, searched the web</summary>
>
> - Ran `Select-String -Path 'main.gd' -Pattern 'load_progress|save_progress|games_played|SAVE_STATS_PATH|load_high_score|save_high_score' -Context 1,5; & 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
>
> Searched the web for `site:docs.godotengine.org/en/4.7 AnimationPlayer tutorial animation tracks ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0010-animation-and-feedback.html` (+111 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0010-animation-and-feedback.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
>
> </details>
> </details>

第十课已生成并打开：

[第十课：动画与即时反馈](E:/Workspace/GameDevelop/Godot/snake/lessons/0010-animation-and-feedback.html)

本课将完成：

- 使用 `AnimationPlayer` 制作 Food 循环呼吸
- 使用 `Tween` 制作分数弹跳
- 处理中途重播和多个 Tween 冲突
- 理解 `pivot_offset` 和视觉缩放
- 可选接入 `AudioStreamPlayer` 吃食物音效
- 观察动画与当前暂停机制的关系

完成后回复“动画反馈已完成”，并回答：

> 固定循环的 Food 呼吸与事件触发的分数弹跳，为什么分别选择 `AnimationPlayer` 和 `Tween`？

> 让 BestLabel 仅在创造新纪录时变成黄色并弹跳。你需要在 HUD 保存上一次最高分，比较 new_high_score 是否真正增加。注意：这是 HUD 自己的显示历史，不是全局游戏存档状态。

<details><summary>1 previous message</summary>

> Stream error
>
> Reconnecting 1/5
> stream disconnected before completion: error sending request for url (https://chatgpt.com/backend-api/codex/responses)
> </details>

在 `hud.gd` 中，为 BestLabel 单独保存显示历史和 Tween。

在成员变量区域添加：

```gdscript
const BEST_NORMAL_COLOR := Color("95a5b2")
const BEST_RECORD_COLOR := Color("ffd166")

var displayed_high_score := -1
var best_tween: Tween
```

其中 `-1` 是“尚未收到第一次数据”的标记，避免游戏启动加载存档时误判为新纪录。

修改分数信号回调：

```gdscript
func _on_snake_game_score_changed(
	new_score: int,
	new_high_score: int
) -> void:
	score_label.text = "SCORE  %04d" % new_score
	best_label.text = "BEST  %04d" % new_high_score

	var is_initial_update := displayed_high_score < 0
	var is_new_record := (
		not is_initial_update
		and new_high_score > displayed_high_score
	)

	displayed_high_score = new_high_score

	animate_score()

	if is_new_record:
		animate_new_record()
```

将原来的 ScoreLabel Tween 提取为：

```gdscript
func animate_score() -> void:
	if score_tween:
		score_tween.kill()

	score_label.pivot_offset = score_label.size / 2.0
	score_label.scale = Vector2.ONE

	score_tween = create_tween()
	score_tween.tween_property(
		score_label,
		"scale",
		Vector2(1.25, 1.25),
		0.08
	).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)

	score_tween.tween_property(
		score_label,
		"scale",
		Vector2.ONE,
		0.18
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
```

添加新纪录动画：

```gdscript
func animate_new_record() -> void:
	if best_tween:
		best_tween.kill()

	best_label.pivot_offset = best_label.size / 2.0
	best_label.scale = Vector2.ONE
	best_label.add_theme_color_override(
		"font_color",
		BEST_RECORD_COLOR
	)

	best_tween = create_tween()
	best_tween.tween_property(
		best_label,
		"scale",
		Vector2(1.3, 1.3),
		0.12
	).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)

	best_tween.tween_property(
		best_label,
		"scale",
		Vector2.ONE,
		0.25
	).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)

	best_tween.tween_interval(0.35)
	best_tween.tween_callback(
		func() -> void:
			best_label.add_theme_color_override(
				"font_color",
				BEST_NORMAL_COLOR
			)
	)
```

行为结果：

- 游戏启动加载旧纪录：不播放动画。
- 得分但未超过纪录：只弹跳 ScoreLabel。
- 创造新纪录：BestLabel 变黄并弹跳。
- 重开游戏：最高分未增加，不重复播放动画。

> **动画反馈已完成**

<details><summary>2 previous messages</summary>

> 我会检查 Food 的 AnimationPlayer、HUD 两组 Tween 以及新纪录判断，并运行 Godot 验证。实现通过后，还需要你回答本课的工具选择问题。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'food.tscn'; Get-Content -Raw -LiteralPath 'hud.gd'; if (Test-Path 'hud.tscn') { Select-String -Path 'hud.tscn' -Pattern 'ScoreLabel|BestLabel|offset_|custom_maximum|mouse_filter|margin_right' -Context 0,1 }`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --quit-after 30`
>
> </details>
> </details>

动画反馈实现正确，并通过 Godot 4.7.2 运行验证：

- Food 的 `pulse` 动画长度为 `0.9` 秒并循环播放。
- Scale 关键帧为 `1 → 1.15 → 1`。
- AnimationPlayer 已设置自动播放。
- ScoreLabel Tween 会终止旧动画再重建。
- BestLabel 只在最高分真正增加时变黄并弹跳。
- 初次加载存档不会误判成新纪录。
- 项目没有解析或运行错误。

最后闭卷回答：

> 固定循环的 Food 呼吸与事件触发的分数弹跳，为什么分别选择 `AnimationPlayer` 和 `Tween`？

> 它是固定、循环、需要可视化预览和反复复用的时间轴动画，关键帧比运行时代码更易编辑。
>
> 它由运行时得分事件即时触发，目标属性和中断行为由代码上下文决定，不需要持久时间轴。

<details><summary>2 previous messages</summary>

> 回答完全正确：你已经能根据动画的“固定时间轴”与“运行时上下文”选择工具，而不是只凭个人偏好。我会记录第十课已掌握；第九课的 `user://` 闭卷题仍待补答。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0008-animation-player-and-tween.md` (+7 -0)
>
> </details>
> </details>

回答正确，第十课已完成并记录。

你已掌握：

- `AnimationPlayer`：固定、循环、可视化编辑的时间轴动画
- `Tween`：运行时动态创建的一次性动画
- Tween 冲突与 `kill()`
- 动画枢轴 `pivot_offset`
- 新纪录条件判断与反馈

第九课还有一道未回答的问题：

> 为什么玩家数据应该写入 `user://`，而不是 `res://`？

> res:// 只读

<details><summary>2 previous messages</summary>

> 正确，更精确地说：开发时 `res://` 可能可写，但导出后通常位于只读资源包；`user://` 才是 Godot 跨平台保证可写的用户数据目录。我会记录第九课已掌握。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0009-user-data-persistence.md` (+7 -0)
>
> </details>
> </details>

正确。更完整的表述是：

> `res://` 在导出后通常位于只读资源包中；`user://` 是 Godot 跨平台保证可写的用户数据目录。

第九课已完成并记录。第九、十课现在均已验收。

> 下一课

<details><summary>2 previous messages</summary>

> 第十一课将把 `paused` 与 `game_over` 两个布尔值重构为显式游戏状态机，统一管理 Timer、输入和覆盖层。目标是消除“不可能但可表示”的组合，例如同时暂停且游戏结束，并为菜单与重新开始流程建立清晰边界。
>
> <details><summary>Created a file, edited a file, ran a command, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 pausing games process mode SceneTree paused ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0011-game-state-machine.html` (+136 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0011-game-state-machine.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
>
> </details>
> </details>

第十一课已生成并打开：

[第十一课：用一个状态替代两个布尔值](E:/Workspace/GameDevelop/Godot/snake/lessons/0011-game-state-machine.html)

本课将完成：

- 使用 `enum GameState`
- 消除暂停与结束的无效状态组合
- 用 `set_game_state()` 集中状态副作用
- 统一管理 Timer、输入与覆盖层
- 区分业务状态暂停和 `SceneTree.paused`
- 理解节点 `Process Mode`

完成后回复“状态机已接入”，并回答：

> 为什么两个 `bool` 会允许 `enum` 无法表示的错误状态？

> 添加 signal game_state_changed(previous, current)。在 set_game_state() 保存旧值并于转换后 emit。暂时只在调试输出中订阅它，不要为了使用信号强行拆更多场景。

在 `GameState` 枚举后声明信号：

```gdscript
enum GameState {
	PLAYING,
	PAUSED,
	GAME_OVER,
}

signal game_state_changed(previous, current)

var game_state := GameState.PLAYING
```

修改状态转换函数：

```gdscript
func set_game_state(next_state: GameState) -> void:
	if game_state == next_state:
		return

	var previous_state := game_state
	game_state = next_state

	match game_state:
		GameState.PLAYING:
			move_timer.paused = false
		GameState.PAUSED:
			move_timer.paused = true
		GameState.GAME_OVER:
			move_timer.stop()

	game_state_changed.emit(previous_state, game_state)
	queue_redraw()
```

在 `_ready()` 中订阅调试回调：

```gdscript
func _ready() -> void:
	game_state_changed.connect(_on_game_state_changed)

	randomize()
	food_visual = FOOD_SCENE.instantiate()
	add_child(food_visual)
	load_progress()
	new_game()
```

添加回调：

```gdscript
func _on_game_state_changed(previous, current) -> void:
	print(
		"Game state: %s -> %s"
		% [
			GameState.keys()[previous],
			GameState.keys()[current],
		]
	)
```

运行后暂停、恢复和撞墙，Output 应显示：

```text
Game state: PLAYING -> PAUSED
Game state: PAUSED -> PLAYING
Game state: PLAYING -> GAME_OVER
```

这里主游戏只发布状态变化事实。当前订阅者仅负责调试输出，不需要创建新场景或通用状态机框架。

> 下一课

<details><summary>2 previous messages</summary>

> 我先检查状态枚举、集中转换和调试信号是否正确接入。第十二课将进入 Godot 调试与性能诊断：断点、单步、Remote Inspector、Profiler、Monitors，以及用可复现证据定位问题。
>
> <details><summary>Created a file, ran 3 commands, searched the web</summary>
>
> - Ran `Select-String -Path 'main.gd' -Pattern 'enum GameState|signal game_state_changed|var game_state|func set_game_state|game_state_changed.emit|_on_game_state_changed|game_over|var paused' -Context 1,10; & 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
>
> - Ran `Select-String -Path 'main.gd' -Pattern 'enum GameState|signal game_state_changed|var game_state|func set_game_state|game_state_changed.emit|_on_game_state_changed|game_over|var paused' -Context 1,10`
>
> Searched the web for `site:docs.godotengine.org/en/4.7 debugger panel breakpoints profiler monitors Godot editor ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0012-debugging-and-profiling.html` (+124 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0012-debugging-and-profiling.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
>
> </details>
> </details>

第十二课已生成并打开：

[第十二课：用证据定位问题](E:/Workspace/GameDevelop/Godot/snake/lessons/0012-debugging-and-profiling.html)

本课将实践：

- 断点、单步和变量检查
- 调用栈分析
- 使用 Remote Inspector 调查 HUD 偏移
- 区分 Output、Warning 和 Error
- 录制 Profiler 性能基线
- 观察 Node、Object、内存等 Monitors
- 编写可复现的问题记录

完成后回复“调试基线已记录”，并提供：

1. 一次蛇移动的 `snake[0]`、`direction`、`new_head`
2. Remote Hud 的 Offset 和修复后的值
3. Profiler 中 Self Time 最高的脚本函数

同时回答：

> 为什么性能优化前必须先测量？

> 下一课

<details><summary>3 previous messages</summary>

> 第十三课将进行发布前重构与项目整理：根据当前真实代码消除重复副作用、补齐依赖验证、清理场景实例覆盖和乱码，并建立清晰的文件组织。目标不是增加功能，而是让每一处职责都可解释、可维护、可验证。
>
> <details><summary>Created 2 files, ran 2 commands</summary>
>
> - Ran `$files=@('main.gd','main.tscn','hud.gd','hud.tscn','food.gd','food.tscn','game_rules.gd','project.godot'); foreach($f in $files){"===== $f ====="; Get-Content -Raw -LiteralPath $f}; Get-ChildItem -Force | Select-Object Mode,Length,Name`
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0013-release-refactor.html` (+112 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/reference/release-checklist.html` (+9 -0)
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0013-release-refactor.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
>
> </details>
>
> Context compaction
>
> Source: automatic
> Status: completed
> </details>

第十三课已生成并打开：

[第十三课：发布前重构与质量门禁](<E:/Workspace/GameDevelop/Godot/snake/lessons/0013-release-refactor.html>)

本课将完成：

- 清理 HUD 场景覆盖值并修复布局
- 集中管理游戏状态副作用
- 校验必需的 `GameRules`
- 修复文字乱码与音频节点语义
- 执行发布前质量检查

配套资料：[发布检查表](<E:/Workspace/GameDevelop/Godot/snake/reference/release-checklist.html>)

完成后回复：**发布前重构完成**

思考题：为什么状态副作用应该只有一个入口？

> 下一课

<details><summary>4 previous messages</summary>

> 继续使用 `$teach` 教学流程。我先核对课程进度和当前项目状态，再生成第十四课（核心课程的收官课）。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n---LESSONS---"; Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\lessons' -Filter '*.html' | Sort-Object Name | Select-Object -ExpandProperty Name; Write-Output "`n---MISSION---"; Get-Content -Raw 'E:\Workspace\GameDevelop\Godot\snake\MISSION.md'; Write-Output "`n---LESSON13---"; Get-Content -Raw 'E:\Workspace\GameDevelop\Godot\snake\lessons\0013-release-refactor.html'``
>
> </details>
>
> 第十四课会直接对应你的最终目标：把 Snake 从“编辑器里能运行”变成“可独立分发的 Windows 游戏”。这也是 14 节核心路线的收官验证。
>
> <details><summary>Created a file, ran a command, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 exporting projects Windows export templates Godot 4.7 ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0014-export-windows-build.html` (+125 -0)
>
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0014-export-windows-build.html' | Select-Object FullName,Length,LastWriteTime; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0014-export-windows-build.html'`
>
> </details>
> </details>

第十四课已生成并打开：

[第十四课：导出可分发的 Windows 游戏](<E:/Workspace/GameDevelop/Godot/snake/lessons/0014-export-windows-build.html>)

这是核心课程的收官课，目标是导出 `Snake.exe`，并在关闭 Godot、离开项目目录后独立运行。

完成后回复：**Windows 构建已独立运行**

思考题：为什么从项目目录之外启动，是一次比按 `F5` 更强的验证？

> F6 是当前scene  F5 是默认scene

正确。

- `F6`：运行当前正在编辑的场景，适合单独测试 HUD、角色等子场景。
- `F5`：从项目设置的 **Main Scene** 启动完整游戏。
- 导出后的游戏：同样从 **Main Scene** 启动。

注意：这里的“默认 Scene”更准确地称为**项目主场景（Main Scene）**。

> 下一课

<details><summary>2 previous messages</summary>

> 核心 14 课已经结束；接下来进入进阶篇。我会继续按 `$teach` 流程，第一课选择“多场景与场景切换”，让当前单场景 Snake 扩展出标题界面，并建立 Godot 的场景生命周期概念。
>
> <details><summary>Created a file, ran 2 commands, searched the web</summary>
>
> - Ran `Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\learning-records' -Filter '*.md' | Sort-Object Name | Select-Object -ExpandProperty Name; Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\assets' | Select-Object -ExpandProperty Name`
>
> Searched the web for `site:docs.godotengine.org/en/4.7 change_scene_to_file SceneTree Godot ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0015-scene-switching.html` (+98 -0)
>
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0015-scene-switching.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0015-scene-switching.html'`
>
> </details>
> </details>

进阶篇第一课已生成并打开：

[第十五课：多场景与场景切换](<E:/Workspace/GameDevelop/Godot/snake/lessons/0015-scene-switching.html>)

本课将为 Snake 添加标题界面，并学习：

- `SceneTree.change_scene_to_file()`
- 当前场景的进入、退出与释放
- Main Scene 如何作为游戏入口
- 何时需要、何时不需要 Autoload

完成后回复：**标题场景已接管入口**

> 先不开始15课；导入了qframework； 后续基于framework 框架进行开发

<details><summary>4 previous messages</summary>

> 明白，暂缓第十五课。这个决定会改变后续课程架构；我会先记录教学偏好，并检查你导入的 QFramework 版本与目录，之后课程以项目中的实际 API 为准。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- QFRAMEWORK FILES ---"; if (Test-Path 'E:\Workspace\GameDevelop\Godot\snake') { rg --files 'E:\Workspace\GameDevelop\Godot\snake' | rg -i 'qframework|framework|qf' | Select-Object -First 100 }; Write-Output "`n--- TOP LEVEL ---"; Get-ChildItem -Force 'E:\Workspace\GameDevelop\Godot\snake' | Select-Object Name,Mode``
> - Ran `Write-Output '--- plugin.cfg ---'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\plugin.cfg'; Write-Output '--- project plugin state ---'; rg -n -i 'qframework|enabled' 'E:\Workspace\GameDevelop\Godot\snake\project.godot'; Write-Output '--- version markers ---'; rg -n -i 'version|版本' 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework' -g '*.cfg' -g '*.json' -g '*.gd' -g '*.md' | Select-Object -First 40; Write-Output '--- NOTES ---'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\NOTES.md'`
>
> </details>
>
> 已确认项目中启用的是 GDScript 版 QFramework `v0.4.1`，最低引擎要求与当前 Godot 4.7 兼容。第十五课先保留但不开始；后续将改为“Godot 原生机制 → QFramework 对应抽象 → Snake 实践”的路线。
>
> <details><summary>Edited a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/NOTES.md` (+3 -0)
>
> </details>
> </details>

已调整课程路线：

- 第十五课暂缓，不算已开始。
- 已确认并启用 QFramework GDScript `v0.4.1`。
- 后续课程和 Snake 开发都基于 QFramework。
- 教学顺序改为：Godot 原生机制 → QFramework 抽象 → Snake 实践。
- 下一课将先梳理 QFramework Architecture，并规划现有代码的迁移边界，不会立刻大规模重构。

该决定已记录到 [NOTES.md](<E:/Workspace/GameDevelop/Godot/snake/NOTES.md>)。

> 下一课

<details><summary>4 previous messages</summary>

> 继续使用 `$teach`。这节先不重构 Snake，而是基于你项目里的 QFramework `v0.4.1` 建立 Architecture 心智模型，并做一个最小可验证接入。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- ARCHITECTURE API ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\architecture\architecture.gd'; Write-Output "`n--- ABSTRACT MODEL ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\architecture\abstract_model.gd'; Write-Output "`n--- DOC INTRO ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\01. 简介.md'; Write-Output "`n--- DOC CORE ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\04. 引入架构&迁移 count.md'``
>
> </details>
>
> 我已核对框架源码：`Architecture` 本身是一个 Autoload `Node`，启动时创建 `Utility / Model / System` 三层；`init()` 负责注册，初始化顺序是 Utility → Model → System。本课只验证这条生命周期，不迁移分数或移动逻辑。
>
> <details><summary>Created 2 files, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0016-qframework-architecture-lifecycle.html` (+75 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/reference/qframework-architecture-map.html` (+32 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0016-qframework-architecture-lifecycle.html','E:\Workspace\GameDevelop\Godot\snake\reference\qframework-architecture-map.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0016-qframework-architecture-lifecycle.html'`
>
> </details>
> </details>

QFramework 第一课已生成并打开：

[第十六课：QFramework Architecture 生命周期](<E:/Workspace/GameDevelop/Godot/snake/lessons/0016-qframework-architecture-lifecycle.html>)

本课只完成最小接入：

- 创建 `SnakeApp` Architecture
- 确认它注册为 Autoload
- 在 Remote 场景树查看 `System / Model / Utility`
- 理解 QFramework 如何建立在 Godot `SceneTree` 之上
- 暂不迁移现有游戏代码

配套资料：[Architecture 分层速查](<E:/Workspace/GameDevelop/Godot/snake/reference/qframework-architecture-map.html>)

完成后回复：**SnakeApp 三层已出现**

> **SnakeApp 三层已出现**

验证通过：`SnakeApp` 已作为运行时节点初始化，QFramework 基础接入成功。

闭卷题：**Architecture 能够跨场景存在，底层依赖 Godot 的什么机制？**

> 不知道

答案是：**Autoload（自动加载）机制**。

`SnakeApp` 被注册为 Autoload 后，会作为节点加入：

```text
SceneTree.root
├── SnakeApp       ← Autoload，持续存在
└── 当前游戏场景   ← 切换时会被替换
```

因此，跨场景能力并不是 QFramework 自己绕过 Godot 实现的，而是建立在 Godot 的 `SceneTree + Autoload` 之上。

记忆句：**场景会换，Autoload 不换。**

> 下一课

<details><summary>4 previous messages</summary>

> 继续使用 `$teach`。下一课只迁移一个真实共享状态：把 `score / high_score / games_played` 的所有权交给 QFramework Model；移动、绘制和 HUD 暂时保持原样。
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- MODEL DOC ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\05. 引入 Model & 什么是需要共享的数据.md'; Write-Output "`n--- MODEL EXAMPLES ---"; rg -n -C 5 'extends AbstractModel|register_model|get_model\(' 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework' -g '*.gd' -g '*.md' | Select-Object -First 260; Write-Output "`n--- CURRENT GAME FILES ---"; rg -n 'score|high_score|games_played|SnakeApp' 'E:\Workspace\GameDevelop\Godot\snake\game' 'E:\Workspace\GameDevelop\Godot\snake\ui' -g '*.gd' -g '*.tscn'``
> - Ran `Write-Output '--- SNAKE APP FILES ---'; rg -n 'class_name SnakeApp|extends Architecture|SnakeApp' 'E:\Workspace\GameDevelop\Godot\snake' -g '*.gd' -g 'project.godot'; Write-Output '--- MAIN GD ---'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\game\main.gd'`
> - Ran `Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\LEARNING-RECORD-FORMAT.md'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\learning-records\0009-user-data-persistence.md'`
>
> </details>
>
> 这节会刻意留下 `score` 在 `main.gd`：它是单局、局部运行状态；先迁移真正跨时间共享的 `high_score` 与 `games_played`。这样能学会 Model 的边界，而不是把所有变量机械搬进框架。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0017-qframework-first-model.html` (+117 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0017-qframework-first-model.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0017-qframework-first-model.html'`
>
> </details>
> </details>

下一课已生成并打开：

[第十七课：第一个 QFramework Model](<E:/Workspace/GameDevelop/Godot/snake/lessons/0017-qframework-first-model.html>)

本课将：

- 创建并注册 `ProgressModel`
- 迁移 `high_score` 和 `games_played`
- 保留单局 `score` 在 `main.gd`
- 在 Remote 场景树观察 Model 状态
- 暂不引入 Command、Event 或数据绑定

完成后回复：**进度数据已归 Model**

> **进度数据已归 Model  它只属于当前一局和当前游戏场景，重开即归零，暂时没有跨时间或跨对象共享的需求。**

<details><summary>4 previous messages</summary>

> 回答正确：你已经用“状态生命周期与共享范围”判断 Model 边界，而不是按变量类型机械分层。我会检查实现并把这项掌握记录下来。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- MODEL ---"; rg -n -C 3 'class_name ProgressModel|high_score|games_played|get_model_name' 'E:\Workspace\GameDevelop\Godot\snake' -g '*.gd' -g '!addons/**'; Write-Output "`n--- REGISTRATION ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\snake_app.gd'; Write-Output "`n--- RECORDS ---"; Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\learning-records' -Filter '*.md' | Sort-Object Name | Select-Object -ExpandProperty Name``
>
> </details>
>
> 概念判断正确，注册与迁移也基本完成。不过检查到一处未通过：吃到食物时更新最高分的语句被注释了，因此 HUD 的 `BEST` 会等到死亡后才更新。先恢复该行，再做一次即时显示验证。
>
> <details><summary>Created a file</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0010-qframework-model-boundary.md` (+7 -0)
>
> </details>
> </details>

概念与架构迁移均正确，已记录到 [学习记录 0010](<E:/Workspace/GameDevelop/Godot/snake/learning-records/0010-qframework-model-boundary.md>)。

还需修复一行才能完全验收。在 [main.gd](<E:/Workspace/GameDevelop/Godot/snake/game/main.gd:142>) 中取消注释：

```gdscript
progress_model.high_score = maxi(progress_model.high_score, score)
```

否则吃到食物时 `BEST` 不会即时增加，只会在游戏结束时更新。修复并验证后即可进入下一课。

> 下一课

<details><summary>2 previous messages</summary>

> 继续使用 `$teach`。下一课把 `ConfigFile` 读写从游戏场景移入 QFramework Utility，让 Model 只保存数据、Utility 只处理外部存储、Controller 负责协调两者。
>
> <details><summary>Created a file, ran 3 commands</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- UTILITY API ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\architecture\abstract_utility.gd'; Write-Output "`n--- UTILITY DOC ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\08. 引入 Utility.md'; Write-Output "`n--- CURRENT MIGRATION ---"; rg -n -C 2 'progress_model|high_score|games_played|ConfigFile|SAVE_PATH' 'E:\Workspace\GameDevelop\Godot\snake\game\main.gd' 'E:\Workspace\GameDevelop\Godot\snake\scripts' -g '*.gd'``
> - Ran `rg -n -C 8 'class_name StorageUtility|StorageUtility|save_int|load_int|save\(|load\(' 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework' -g '*.gd' -g '*.md' | Select-Object -First 300`
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0018-qframework-storage-utility.html` (+138 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0018-qframework-storage-utility.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0018-qframework-storage-utility.html'`
>
> </details>
> </details>

下一课已生成并打开：

[第十八课：用 Utility 隔离 ConfigFile](<E:/Workspace/GameDevelop/Godot/snake/lessons/0018-qframework-storage-utility.html>)

本课将：

- 创建并注册 `StorageUtility`
- 将 `ConfigFile` 和存档路径移出 `main.gd`
- 让 `ProgressModel` 管理进度业务
- 理解初始化顺序：Utility → Model → System
- 验证替换存储方案时业务代码不受影响

完成后回复：**存档已归 Utility**

思考题：为什么 `StorageUtility` 不应该直接拥有 `high_score`？

> Utility 负责存储技术，Model 负责业务状态；否则基础设施层会反向拥有游戏领域数据。

<details><summary>2 previous messages</summary>

> 回答完全正确：依赖方向应是 Model 使用存储能力，而不是存储层拥有游戏领域状态。我再核对项目实现是否也满足这个边界。
>
> <details><summary>Ran a command</summary>
>
> - Ran `Write-Output '--- UTILITY ---'; rg -n -C 3 'class_name StorageUtility|ConfigFile|SAVE_PATH|load_int|set_int|flush' 'E:\Workspace\GameDevelop\Godot\snake\scripts' 'E:\Workspace\GameDevelop\Godot\snake\game' -g '*.gd'; Write-Output '--- REGISTRATION ---'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\snake_app.gd'; Write-Output '--- MODEL ---'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\models\progress_model.gd'`
>
> </details>
> </details>

概念正确，`StorageUtility`、注册顺序和 `ProgressModel` 均已实现。

但迁移尚未完全收尾：[main.gd](<E:/Workspace/GameDevelop/Godot/snake/game/main.gd:10>) 仍保留旧存档代码：

- `SAVE_PATH`
- `load_progress()`
- `save_progress()`
- `_ready()` 中的 `load_progress()` 调用

请删除这些旧实现，并确认 `finish_game()` 只调用：

```gdscript
progress_model.record_completed_game(score)
```

最终全局搜索 `ConfigFile` 和 `scores.cfg`，业务代码中都应只命中 `storage_utility.gd`。完成后回复：**存档已归 Utility**。

> 下一课

<details><summary>4 previous messages</summary>

> 继续使用 `$teach`。我先确认 Utility 收尾状态，再生成下一课：用 Command 表达“完成一局”这一写操作，避免 Controller 直接修改 Model。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- UTILITY CLEANUP CHECK ---"; rg -n 'ConfigFile|SAVE_PATH|load_progress|save_progress|record_completed_game' 'E:\Workspace\GameDevelop\Godot\snake\game\main.gd' 'E:\Workspace\GameDevelop\Godot\snake\scripts' -g '*.gd'; Write-Output "`n--- COMMAND API ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\architecture\abstract_command.gd'; Write-Output "`n--- COMMAND DOC ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\06. 引入 Command.md'; Write-Output "`n--- GENERATOR ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\editor\code_gen\generate_command_code.gd'``
>
> </details>
>
> 检查发现上一课的旧 `ConfigFile` 代码仍在 `main.gd`，所以新课会把“清除重复存档入口”设为第 0 步；完成该门禁后，再用 `CompleteGameCommand` 封装结束一局的写操作。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0019-qframework-first-command.html` (+98 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0019-qframework-first-command.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0019-qframework-first-command.html'`
>
> </details>
> </details>

下一课已生成并打开：

[第十九课：第一个 QFramework Command](<E:/Workspace/GameDevelop/Godot/snake/lessons/0019-qframework-first-command.html>)

本课首先要求清除 `main.gd` 中残留的旧存档代码，然后：

- 创建 `CompleteGameCommand`
- 通过构造函数传入最终得分
- 使用 `SnakeApp.send_command()` 执行
- 让 Controller 不再直接调用 Model 的写操作
- 理解 Command 为什么不需要注册

完成后回复：**完成一局已命令化**

> **完成一局已命令化**

<details><summary>2 previous messages</summary>

> 收到。我会核对旧存档入口是否清理、Command 是否成为唯一调用方，再完成本课验收。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- COMMAND ---"; if (Test-Path 'E:\Workspace\GameDevelop\Godot\snake\scripts\commands\complete_game_command.gd') { Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\commands\complete_game_command.gd' }; Write-Output "`n--- CALLS AND STORAGE ---"; rg -n 'CompleteGameCommand|record_completed_game|ConfigFile|scores.cfg|load_progress|save_progress' 'E:\Workspace\GameDevelop\Godot\snake\game' 'E:\Workspace\GameDevelop\Godot\snake\scripts' -g '*.gd'``
>
> </details>
> </details>

验收通过：

- 旧 `ConfigFile` 入口已清除。
- `CompleteGameCommand` 正确接收最终得分。
- `main.gd` 通过 `SnakeApp.send_command()` 发送写操作。
- `record_completed_game()` 的唯一调用方是 Command。

闭卷题：**为什么 Command 不需要像 Model 一样注册到 Architecture？**

> Command 是按需创建和执行的一次性用例对象，不是由 Architecture 长期持有的共享服务或状态。

<details><summary>2 previous messages</summary>

> 回答正确。你已经区分了“Architecture 长期持有的共享对象”和“按需创建的一次性用例对象”；我会把这项能力记入学习记录。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Ran `Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\LEARNING-RECORD-FORMAT.md'`
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0011-qframework-command-lifecycle.md` (+7 -0)
>
> </details>
> </details>

完全正确。

关键区别是：

- Model、System、Utility：注册一次，由 Architecture 长期持有。
- Command：按需创建，表达一次写操作，执行结束即可释放。

已记录到 [学习记录 0011](<E:/Workspace/GameDevelop/Godot/snake/learning-records/0011-qframework-command-lifecycle.md>)。你已经具备继续学习 Event 与 CQRS 的基础。

> .下一课

<details><summary>5 previous messages</summary>

> 继续使用 `$teach`。下一课将把“进度已经改变”建模为 QFramework Event：Command 负责写，Event 负责广播事实，HUD/调试订阅者按需响应。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- EVENT CQRS DOC ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\07. 引入 Event & CQRS 介绍.md'; Write-Output "`n--- EASY EVENT FILES ---"; rg -n 'class_name EasyEvent|func register|func trigger|un_register' 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework' -g '*.gd'; Write-Output "`n--- MAIN/HUD CURRENT ---"; rg -n -C 2 'score_changed|progress_model|send_command|CompleteGameCommand' 'E:\Workspace\GameDevelop\Godot\snake\game\main.gd' 'E:\Workspace\GameDevelop\Godot\snake\ui\hud.gd' 'E:\Workspace\GameDevelop\Godot\snake\game\main.tscn'``
> - Ran `Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\corekit\easy_event\scripts\easy_event.gd'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\corekit\easy_event\scripts\event.gd'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\corekit\easy_event\scripts\un_register.gd'`
>
> </details>
>
> 本课会保留现有 Godot `score_changed`：它适合当前场景到子 HUD 的局部通信。新增 QFramework `progress_saved`，专门描述跨层的持久进度事实；借此比较两种事件机制的适用边界。
>
> Stream error
>
> Reconnecting 1/5
> stream disconnected before completion: Transport error: network error: error decoding response body
>
> <details><summary>Created a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0020-qframework-event-cqrs.html` (+88 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0020-qframework-event-cqrs.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0020-qframework-event-cqrs.html'`
>
> </details>
> </details>

下一课已生成并打开：

[第二十课：QFramework Event 与 CQRS](<E:/Workspace/GameDevelop/Godot/snake/lessons/0020-qframework-event-cqrs.html>)

本课将：

- 在 `ProgressModel` 中定义 `progress_saved`
- 保存成功后触发 `EasyEvent`
- 将订阅生命周期绑定到场景节点
- 比较 QFramework Event 与 Godot Signal 的适用范围
- 建立 Command → Model → Event 的最小 CQRS 闭环

完成后回复：**进度事实已广播**

思考题：为什么 `progress_saved` 不能在 `flush()` 之前触发？

> 下一课

<details><summary>4 previous messages</summary>

> 继续使用 `$teach`。我先检查 Event 是否已落地；下一课将补齐 CQRS 的读取侧，用 Query 代替 Controller 直接读取共享 Model。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- EVENT CHECK ---"; rg -n -C 3 'progress_saved|EasyEvent|un_register_when_node_exiting_tree|_on_progress_saved' 'E:\Workspace\GameDevelop\Godot\snake\game' 'E:\Workspace\GameDevelop\Godot\snake\scripts' -g '*.gd'; Write-Output "`n--- QUERY API ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\architecture\abstract_query.gd'; Write-Output "`n--- QUERY DOC ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\12. 引入 Query.md'; Write-Output "`n--- QUERY GENERATOR ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\editor\code_gen\generate_query_code.gd'``
>
> </details>
>
> Event 实现已核对通过：保存成功后触发，并绑定了节点退出时自动注销。Query 课程会强调它是可选的；只把“组合进度摘要”封装为 Query，简单字段读取不强制套一层。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0021-qframework-query.html` (+91 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0021-qframework-query.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0021-qframework-query.html'`
>
> </details>
> </details>

下一课已生成并打开：

[第二十一课：QFramework Query](<E:/Workspace/GameDevelop/Godot/snake/lessons/0021-qframework-query.html>)

本课将：

- 创建 `ProgressSummaryQuery`
- 使用 `SnakeApp.send_query()` 读取组合数据
- 返回只读快照，而不是暴露 Model
- 补齐 Command / Query / Event 的最小 CQRS 闭环
- 判断何时不需要创建 Query

完成后回复：**进度读取已查询化**

思考题：为什么 Query 应返回快照，而不是直接返回 Model？

> 进度读取已查询化  快照限制暴露范围，并避免把可修改的共享状态引用交给读取方。

<details><summary>2 previous messages</summary>

> 回答正确：Query 返回结果数据，而不是把可变共享对象本身泄漏给调用方。我会核对实现并记录这项 CQRS 能力。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- QUERY ---"; if (Test-Path 'E:\Workspace\GameDevelop\Godot\snake\scripts\queries\progress_summary_query.gd') { Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\queries\progress_summary_query.gd' }; Write-Output "`n--- USAGE ---"; rg -n -C 3 'ProgressSummaryQuery|send_query|_on_progress_saved' 'E:\Workspace\GameDevelop\Godot\snake\game\main.gd' 'E:\Workspace\GameDevelop\Godot\snake\scripts' -g '*.gd'; Write-Output "`n--- RECORDS ---"; Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\learning-records' -Filter '*.md' | Sort-Object Name | Select-Object -ExpandProperty Name``
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0012-qframework-query-snapshot.md` (+7 -0)
>
> </details>
> </details>

验收通过：

- `ProgressSummaryQuery` 只读取 Model。
- 返回独立 Dictionary 快照。
- 调用方使用 `await SnakeApp.send_query()`。
- 没有把可修改的 Model 引用暴露给读取方。

已记录到 [学习记录 0012](<E:/Workspace/GameDevelop/Godot/snake/learning-records/0012-qframework-query-snapshot.md>)。你已经完成 QFramework 的最小 CQRS 闭环：**Command 写入 → Model 保存状态 → Event 通知 → Query 读取**。

> 下一课

<details><summary>4 previous messages</summary>

> 继续使用 `$teach`。下一课进入 System：把“结束一局时更新进度并保存”的跨层业务流程从 Model 移到 `ProgressSystem`，让 Model 更接近纯状态所有者。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- SYSTEM API ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\architecture\abstract_system.gd'; Write-Output "`n--- SYSTEM DOC ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\09. 引入 System.md'; Write-Output "`n--- CURRENT ARCH FILES ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\snake_app.gd'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\models\progress_model.gd'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\commands\complete_game_command.gd'``
>
> </details>
>
> 这次迁移的边界是：`ProgressModel` 只保留状态与简单状态规则；`ProgressSystem` 协调 Model 和 StorageUtility，负责加载、结算、保存这一跨层流程；`CompleteGameCommand` 改为调用 System。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0022-qframework-system.html` (+144 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0022-qframework-system.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0022-qframework-system.html'`
>
> </details>
> </details>

下一课已生成并打开：

[第二十二课：QFramework System](<E:/Workspace/GameDevelop/Godot/snake/lessons/0022-qframework-system.html>)

本课将：

- 创建并注册 `ProgressSystem`
- 将加载、结算、保存流程移出 Model
- 让 Model 只保留业务状态
- 让 Command 调用 System
- 理解初始化顺序：Utility → Model → System
- 区分 System 与“万能 Manager”

完成后回复：**进度流程已归 System**

思考题：System 与万能 Manager 的关键区别是什么？

> 进度流程已归 System   不知道

<details><summary>2 previous messages</summary>

> 没关系，这正是本课最重要的边界。我先核对迁移是否正确，再用当前 Snake 的代码说明 System 和万能 Manager 的区别。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- SYSTEM ---"; if (Test-Path 'E:\Workspace\GameDevelop\Godot\snake\scripts\systems\progress_system.gd') { Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\systems\progress_system.gd' }; Write-Output "`n--- ARCHITECTURE ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\snake_app.gd'; Write-Output "`n--- MODEL ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\models\progress_model.gd'; Write-Output "`n--- COMMAND ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\scripts\commands\complete_game_command.gd'``
>
> </details>
> </details>

实现已验收通过，分层正确：

```text
Command → ProgressSystem → ProgressModel + StorageUtility
```

区别在于职责边界：

- `ProgressSystem` 只负责一个明确领域：玩家进度流程。
- 万能 Manager 往往同时管理进度、UI、音频、输入、场景、存档等无关职责。

判断方法：如果一个类的名字只能叫 `GameManager`，而无法用具体业务名称描述，它通常正在变成万能 Manager。

当前 `ProgressSystem` 是合理的，因为它：

- 只协调进度结算与加载；
- 不直接操作 HUD、Timer 或场景节点；
- 状态交给 Model；
- 文件技术交给 Utility。

记忆句：**System 按业务能力聚合，Manager 按“什么都管”膨胀。**

> 下一刻

<details><summary>4 previous messages</summary>

> 按“下一课”处理。继续使用 `$teach`：下一课学习 `BindableProperty`，把 `high_score` 从“裸整数 + 手动 Event”升级为可观察属性，并保持局部 `score` 不变。
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- BINDABLE ARCH DOC ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\10. 引入 BindableProperty 支持数据驱动.md'; Write-Output "`n--- BINDABLE API ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\corekit\easy_event\scripts\bindable_property.gd'; Write-Output "`n--- BINDABLE DOCS ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\04. BindableProperty\01. 简介&基本使用.md'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\04. BindableProperty\03. 值发生变更时通知.md'``
> - Ran `Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture' | Select-Object -ExpandProperty Name; Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\04. BindableProperty' | Select-Object -ExpandProperty Name`
> - Ran `Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\07. Architecture\10. 使用 BindableProperty 优化事件.md'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\04. BindableProperty\02. 注册时调用一次.md'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\04. BindableProperty\03. 设置值但是不触发变更事件.md'`
>
> </details>
>
> 这节会真正改造 HUD 的数据流：`score_changed` 只传单局分数；`BestLabel` 直接订阅 `ProgressModel.high_score` 的 BindableProperty。这样局部 Signal 与共享响应式状态各司其职。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0023-qframework-bindable-property.html` (+118 -0)
> - Ran `Get-Item 'E:\Workspace\GameDevelop\Godot\snake\lessons\0023-qframework-bindable-property.html' | Select-Object FullName,Length; Start-Process 'E:\Workspace\GameDevelop\Godot\snake\lessons\0023-qframework-bindable-property.html'`
>
> </details>
> </details>

下一课已生成并打开：

[第二十三课：BindableProperty 数据绑定](<E:/Workspace/GameDevelop/Godot/snake/lessons/0023-qframework-bindable-property.html>)

本课将：

- 把 `high_score` 改为 `BindableProperty`
- 让 `BestLabel` 直接订阅最高分
- 将 `score_changed` 收窄为局部单局分数信号
- 使用 `register_with_init_value()` 初始化 UI
- 判断哪些字段不需要数据绑定

完成后回复：**最高分已数据绑定**

思考题：为什么启动加载使用 `set_value_without_event()`，HUD 仍能显示初始值？

> 最高分已数据绑定

<details><summary>2 previous messages</summary>

> 收到。我会核对 Model、System、Query、Signal 和 HUD 五处是否都完成了 `.value` 迁移，再进行本课验收。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- HIGH SCORE REFERENCES ---"; rg -n -C 2 'high_score|score_changed|register_with_init_value|set_value_without_event' 'E:\Workspace\GameDevelop\Godot\snake\game' 'E:\Workspace\GameDevelop\Godot\snake\ui' 'E:\Workspace\GameDevelop\Godot\snake\scripts' -g '*.gd' -g '*.tscn'``
>
> </details>
> </details>

实现验收通过：

- `high_score` 已改为 `BindableProperty`。
- System 加载时使用 `set_value_without_event()`。
- Query 返回普通整数快照。
- HUD 使用 `register_with_init_value()` 并自动注销。
- `score_changed` 已收窄为单参数局部信号。

闭卷题：**为什么启动加载没有触发事件，HUD 仍能立即显示存档中的最高分？**

> 加载是在建立初始状态，不是一次运行时变化；HUD 随后通过 register_with_init_value 获取当前值。

<details><summary>2 previous messages</summary>

> 回答正确。你已经区分“建立初始状态”和“运行时状态变化”，也理解了 `register_with_init_value()` 如何避免 UI 初始空白；我会记录这项能力。
>
> <details><summary>Created a file, ran a command</summary>
>
> - Ran `Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\LEARNING-RECORD-FORMAT.md'`
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0013-bindable-property-initialization.md` (+7 -0)
>
> </details>
> </details>

完全正确。

- `set_value_without_event()`：建立初始状态，不制造运行时变化事件。
- `register_with_init_value()`：订阅时立即读取当前值，随后继续接收变化。

已记录到 [学习记录 0013](<E:/Workspace/GameDevelop/Godot/snake/learning-records/0013-bindable-property-initialization.md>)。

> 更新Mission 和 notes  resources

<details><summary>6 previous messages</summary>

> 我会按 `$teach` 工作区规范整理三份状态文件：修复 `MISSION.md` 编码并反映 QFramework 方向，更新 `NOTES.md` 的教学进度与偏好，补充 `RESOURCES.md` 的本地框架源码和官方 Godot 资料。
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\SKILL.md'; Write-Output "`n--- MISSION FORMAT ---"; Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\MISSION-FORMAT.md'; Write-Output "`n--- RESOURCES FORMAT ---"; Get-Content -Raw 'C:\Users\liu\.codex\skills\teach\RESOURCES-FORMAT.md'; Write-Output "`n--- MISSION ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\MISSION.md'; Write-Output "`n--- NOTES ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\NOTES.md'; Write-Output "`n--- RESOURCES ---"; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\RESOURCES.md'; Write-Output "`n--- RECORDS ---"; Get-ChildItem 'E:\Workspace\GameDevelop\Godot\snake\learning-records' -Filter '*.md' | Sort-Object Name | ForEach-Object { Get-Content -Raw -Encoding UTF8 $_.FullName }``
>
> </details>
>
> 现有记录显示目标已从“只掌握 Godot 原生基础”扩展为“能判断何时使用原生机制、何时使用 QFramework 分层”。我会把它写进成功标准，但保留“不盲目框架化”这一约束。
>
> <details><summary>Created a file, edited 3 files, searched the web</summary>
>
> Searched the web for `QFramework GDScript qfgd liangxiegame GitHub ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/MISSION.md` (+9 -3)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/NOTES.md` (+6 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+26 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0014-mission-expanded-to-qframework.md` (+7 -0)
>
> </details>
>
> 三份文件已更新，并新增 Mission 变更学习记录。现在做一次格式与链接目标检查，确保本地资源路径和章节结构可用。
>
> <details><summary>Ran a command</summary>
>
> - Ran `Write-Output '--- MISSION ---'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\MISSION.md'; Write-Output '--- NOTES ---'; Get-Content -Raw -Encoding UTF8 'E:\Workspace\GameDevelop\Godot\snake\NOTES.md'; Write-Output '--- RESOURCE LOCAL TARGETS ---'; @('E:\Workspace\GameDevelop\Godot\snake\addons\qframework\doc\01. 概述.md','E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\architecture\architecture.gd','E:\Workspace\GameDevelop\Godot\snake\addons\qframework\framework\corekit\easy_event\scripts\event.gd','E:\Workspace\GameDevelop\Godot\snake\learning-records\0014-mission-expanded-to-qframework.md') | ForEach-Object { [PSCustomObject]@{ Exists = Test-Path -LiteralPath $_; Path = $_ } }; Write-Output '--- RESOURCE HEADINGS ---'; rg -n '^#' 'E:\Workspace\GameDevelop\Godot\snake\RESOURCES.md'`
>
> </details>
> </details>

已完成更新并验证本地链接：

- [MISSION.md](<E:/Workspace/GameDevelop/Godot/snake/MISSION.md>)
  新增 QFramework、调试能力和独立发布目标。

- [NOTES.md](<E:/Workspace/GameDevelop/Godot/snake/NOTES.md>)
  记录当前课程进度、已掌握内容、教学偏好及待复习边界。

- [RESOURCES.md](<E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md>)
  新增 QFramework v0.4.1 本地源码、官方仓库、Godot 调试与导出资料，并标记测试资料缺口。

- [学习记录 0014](<E:/Workspace/GameDevelop/Godot/snake/learning-records/0014-mission-expanded-to-qframework.md>)
  记录 Mission 从 Godot 原生入门扩展到 QFramework 下的独立游戏开发。