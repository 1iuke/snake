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

<details><summary>5 previous messages</summary>

> Stream error
>
> Reconnecting 5/5
> request timed out
>
> 我会使用你指定的 `teach` 技能，围绕刚完成的 Godot 贪吃蛇做教学；先读取它的完整教学流程，再按其中方式讲解。
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-Content -Raw -Encoding UTF8 -LiteralPath 'C:\Users\liu\.codex\skills\teach\SKILL.md'`
>
> </details>
>
> `teach` 技能要求先明确学习目标，否则课程会变成泛泛讲代码。我先检查项目里是否已有学习档案；如果没有，就先用一个简短问题确定你的学习方向。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Get-Content -Raw -Encoding UTF8 -LiteralPath 'C:\Users\liu\.codex\skills\teach\MISSION-FORMAT.md'; Get-Content -Raw -Encoding UTF8 -LiteralPath 'C:\Users\liu\.codex\skills\teach\RESOURCES-FORMAT.md'; Get-Content -Raw -Encoding UTF8 -LiteralPath 'C:\Users\liu\.codex\skills\teach\LEARNING-RECORD-FORMAT.md'`
> - Ran `Get-ChildItem -Force -Recurse -File | Where-Object { $_.FullName -match '\\(MISSION|RESOURCES|NOTES)\.md$|\\learning-records\\|\\lessons\\|\\reference\\|\\assets\\' } | Select-Object FullName`
>
> </details>
> </details>

你希望通过这个贪吃蛇项目重点学会什么？

例如：从零掌握 Godot、理解 GDScript、学习游戏循环与碰撞逻辑，或者最终能独立开发并发布小游戏。也请告诉我你目前是否接触过 Godot 或其他编程语言。

> 从零掌握 Godot；会c#、 C++ matlab python unity3d

<details><summary>6 previous messages</summary>

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
>
> <details><summary>Ran a command</summary>
>
> - Ran `$files = @('MISSION.md','RESOURCES.md','NOTES.md','assets\course.css','reference\unity-to-godot.html','lessons\0001-read-the-snake-project.html'); $files | ForEach-Object { [PSCustomObject]@{ File = $_; Exists = Test-Path -LiteralPath $_; Bytes = if (Test-Path -LiteralPath $_) { (Get-Item -LiteralPath $_).Length } else { 0 } } }; Start-Process -FilePath 'E:\Workspace\GameDevelop\Godot\snake\lessons\0001-read-the-snake-project.html'`
>
> </details>
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
> <details><summary>Created 2 files, edited a file, ran a command, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 GDScript exported properties @export Inspector ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0001-prior-programming-experience.md` (+3 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0002-script-meets-inspector.html` (+63 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0002-script-meets-inspector.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
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

<details><summary>2 previous messages</summary>

> 这不是脚本错误，而是 Godot 在提醒：你意外修改了场景根节点 `SnakeGame` 的 Transform。根节点被其他场景实例化时，位置通常由父场景决定，所以 Godot 建议根节点保持默认变换。我先检查 `main.tscn` 里具体改了哪一项，再告诉你精准恢复方式。
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'main.tscn'; Select-String -Path 'main.gd' -Pattern 'START_SPEED|start_speed|MIN_SPEED|min_speed' -Context 1,1`
>
> </details>
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

<details><summary>4 previous messages</summary>

> 第三课会把当前“由 `main.gd` 直接画食物”的实现拆成真正的 `Food.tscn`，让你亲手完成 Scene 创建、`PackedScene` 预加载和 `instantiate()`。这是 Godot 的 Prefab 对应机制，也是后续学习 Signal 和场景解耦的基础。
>
> <details><summary>Searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 getting started creating instances PackedScene instantiate add_child ...`
>
> </details>
>
> Stream error
>
> Reconnecting 1/5
> stream disconnected before completion: Transport error: network error: error decoding response body
>
> <details><summary>Created a file, edited a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+2 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0003-instantiate-food-scene.html` (+96 -0)
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0003-instantiate-food-scene.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
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

<details><summary>4 previous messages</summary>

> 进入下一课前，我先检查你是否已经把 `Food.tscn`、`instantiate()` 和 `add_child()` 实际接入项目。若实现正确，我会记录这项掌握情况，并把第四课建立在真实代码之上。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Get-ChildItem -LiteralPath . -Filter 'food*' | Select-Object Name,Length; Select-String -Path 'main.gd' -Pattern 'FOOD_SCENE|instantiate|add_child|food_visual|draw_food' -Context 1,2; if (Test-Path 'food.gd') { Get-Content -Raw 'food.gd' }; if (Test-Path 'food.tscn') { Get-Content -Raw 'food.tscn' }`
> - Ran `Get-Content -LiteralPath 'main.gd' -TotalCount 130`
>
> </details>
>
> 检查通过：你已经创建 `food.tscn`，成功预加载、实例化并加入 `SnakeGame`，原来的重复绘制也已移除。第三课目标实际完成。第四课我会用 `Timer.timeout` 信号替换手写的 `_process(delta)` 累加器，让你掌握 Godot 的事件驱动节点协作。
>
> <details><summary>Created 2 files, edited a file, ran 2 commands, searched the web</summary>
>
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
>
> Searched the web for `site:docs.godotengine.org/en/4.7 getting started using signals connect timeout Timer ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+2 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0003-packed-scene-instantiation.md` (+7 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0004-timer-signals.html` (+99 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0004-timer-signals.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
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

<details><summary>2 previous messages</summary>

> 我先验证 `MoveTimer` 节点、信号连接和代码改动是否完整，再记录第四课成果。你还没有回答本课的检索问题，因此我会在验证后保留一道简短确认题。
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'main.tscn'; Select-String -Path 'main.gd' -Pattern '@onready|_process|move_timer|MoveTimer|timeout|step_game|finish_game' -Context 1,2; & 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
> - Ran `Get-Content -Raw -LiteralPath 'main.tscn'`
> - Ran `Select-String -Path 'main.gd' -Pattern '@onready|_process|move_timer|MoveTimer|timeout|step_game|finish_game' -Context 1,2`
>
> </details>
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
> <details><summary>Created a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0005-custom-signals-and-hud.html` (+147 -0)
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0005-custom-signals-and-hud.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
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

<details><summary>2 previous messages</summary>

> 我会先检查 `Hud.tscn`、自定义信号、连接方向和旧 HUD 是否移除，并运行 Godot 加载校验。通过后还需要你回答本课的一句闭卷题，才能确认不是只完成了机械操作。
>
> <details><summary>Ran 4 commands</summary>
>
> - Ran `Get-ChildItem -LiteralPath . -Filter 'hud*' | Select-Object Name,Length; Get-Content -Raw -LiteralPath 'main.tscn'; if (Test-Path 'hud.gd') { Get-Content -Raw 'hud.gd' }; Select-String -Path 'main.gd' -Pattern 'signal score_changed|score_changed.emit|draw_header|\$Hud|get_node\("Hud"\)' -Context 1,2`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
> - Ran `Get-Content -LiteralPath 'main.gd' -TotalCount 115`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --quit-after 60`
>
> </details>
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
> <details><summary>Created a file, edited a file, ran a command, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 Input Map actions Input.is_action_pressed is_action_just_pressed ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0006-input-map.html` (+114 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0006-input-map.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
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

<details><summary>2 previous messages</summary>

> 回答正确：玩法代码依赖 `move_up` 这类语义动作，具体设备只需要在 Input Map 中映射。我再检查项目是否已完成六个动作及回调替换；若实现也通过，就记录第六课完成。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Select-String -Path 'project.godot' -Pattern '^\[input\]|^move_up=|^move_down=|^move_left=|^move_right=|^pause_game=|^restart_game='; Select-String -Path 'main.gd' -Pattern '_unhandled_input|_unhandled_key_input|is_action_pressed|KEY_' -Context 0,2`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
>
> </details>
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
> <details><summary>Created 2 files, edited a file, ran 3 commands, searched the web</summary>
>
> - Ran `Select-String -Path 'main.gd' -Pattern '_unhandled_input|_unhandled_key_input|KEY_' -Context 0,1; & 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
>
> - Ran `Select-String -Path 'main.gd' -Pattern '_unhandled_input|_unhandled_key_input|KEY_' -Context 0,1`
>
> Searched the web for `site:docs.godotengine.org/en/4.7 custom resources class_name Resource export create tres inspector ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+2 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/learning-records/0006-input-actions.md` (+7 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0007-custom-resources.html` (+116 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0007-custom-resources.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
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

<details><summary>2 previous messages</summary>

> `Rules` 不出现通常有三类原因：`game_rules.gd` 没有成功注册、`main.gd` 的导出声明未生效，或编辑器还未重新载入脚本。我先检查实际文件和 Godot 解析错误，再给你对应修复。
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `Get-ChildItem -LiteralPath . -Filter '*rules*' | Select-Object Name,Length; if (Test-Path 'game_rules.gd') { Get-Content -Raw 'game_rules.gd' }; Select-String -Path 'main.gd' -Pattern 'start_speed|MIN_SPEED|GameRules|rules' -Context 1,2; Get-Content -Raw 'main.tscn'`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
> - Ran `$lines = Get-Content 'main.gd'; for ($i=1; $i -le $lines.Count; $i++) { if ($i -le 25 -or ($i -ge 82 -and $i -le 100)) { '{0,4}: {1}' -f $i, $lines[$i-1] } }`
>
> </details>
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

<details><summary>2 previous messages</summary>

> 我按“运行后规则未生效”来排查：检查 `main.gd` 是否所有硬编码都已替换、`main.tscn` 是否真正引用了 `.tres`，以及当前运行时错误。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `$lines = Get-Content 'main.gd'; for ($i=1; $i -le $lines.Count; $i++) { if ($i -le 45 -or ($i -ge 80 -and $i -le 100)) { '{0,4}: {1}' -f $i, $lines[$i-1] } }; Get-Content -Raw 'main.tscn'; Get-Content -Raw 'default_rules.tres'`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --quit-after 30`
>
> </details>
> </details>

> 下一课

<details><summary>6 previous messages</summary>

> 第七课代码已接入并通过运行校验；`default_rules.tres` 没显示字段文本是正常的——当前取值与脚本默认值相同，Godot 不必重复序列化。第八课将把 HUD 从手写 `_draw()` 改为真正的 `Control + Container + Label` UI，学习 Godot 的布局系统与窗口自适应。第七课的闭卷题仍保留，之后需要补答。
>
> <details><summary>Searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 UI size anchors containers Control nodes ...`
>
> </details>
>
> GameRules 是可共享的静态规则；score 是每局独立变化的运行时状态，混入后会造成职责和共享语义混乱。
>
> <details><summary>Created a file, edited a file, ran a command</summary>
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0008-control-ui-layout.html` (+111 -0)
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0008-control-ui-layout.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
>
> </details>
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

<details><summary>2 previous messages</summary>

> 这一步只有在 `Hud` 已经成功改成 `Control`、并且处于 **2D 工作区**时才会显示布局工具。我先检查你当前 `hud.tscn` 的根节点类型，判断是菜单位置问题还是类型尚未切换。
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'hud.tscn'; Get-Content -LiteralPath 'hud.gd' -TotalCount 8`
>
> </details>
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

<details><summary>2 previous messages</summary>

> 回答正确：Container 是布局所有者，直接子节点的手动位置会在下一次布局计算时被覆盖。我先验证 Control HUD 的节点树、唯一名称引用和信号回调；通过后记录第八课成果。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'hud.tscn'; Get-Content -Raw -LiteralPath 'hud.gd'`
> - Ran `& 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --quit-after 30`
>
> </details>
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

<details><summary>2 previous messages</summary>

> 我会按 `dev-workflow` 的代码审查流程检查本课 HUD 配置，并顺带运行项目验证信号、Resource、输入与场景加载是否仍正常；重点只报告会影响行为的问题。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Get-Content -Raw -Encoding UTF8 -LiteralPath 'C:\Users\liu\.codex\skills\dev-workflow\SKILL.md'; Get-Content -Raw -Encoding UTF8 -LiteralPath 'C:\Users\liu\.codex\skills\dev-workflow\reference\review.md'`
> - Ran `rg --files -g '*.gd' -g '*.tscn' -g '*.tres' -g 'project.godot'; $files = @('project.godot','main.gd','main.tscn','food.gd','food.tscn','hud.gd','hud.tscn','game_rules.gd','default_rules.tres','fast_rules.tres'); foreach ($file in $files) { if (Test-Path $file) { "===== $file ====="; $n=0; Get-Content $file | ForEach-Object { $n++; '{0,4}: {1}' -f $n, $_ } } }`
>
> </details>
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

<details><summary>2 previous messages</summary>

> 我检查 `main.tscn` 中 Hud 实例的锚点、偏移，以及 `hud.tscn` 根 Control 的尺寸配置，定位它为什么没有覆盖并对齐整个视口。
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'main.tscn'; Get-Content -Raw -LiteralPath 'hud.tscn'`
>
> </details>
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

<details><summary>2 previous messages</summary>

> 我先复查 HUD 实例偏移和本课配置；通过后记录第八课。第九课将实现最高分持久化，学习 `user://`、`ConfigFile`、加载/保存时机以及导出后可写数据与 `res://` 资源的区别。
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'main.tscn'; Get-Content -Raw -LiteralPath 'hud.tscn'; & 'C:\Users\liu\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe' --headless --path 'E:\Workspace\GameDevelop\Godot\snake' --editor --quit`
> - Ran `Get-Content -Raw -LiteralPath 'main.tscn'; Get-Content -Raw -LiteralPath 'hud.tscn'`
>
> </details>
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
> <details><summary>Created a file, edited a file, ran a command, searched the web</summary>
>
> Searched the web for `site:docs.godotengine.org/en/4.7 ConfigFile save load user:// ...`
>
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/RESOURCES.md` (+4 -0)
> - Wrote `E:/Workspace/GameDevelop/Godot/snake/lessons/0009-persist-high-score.html` (+112 -0)
>
> - Ran `$lesson = 'E:\Workspace\GameDevelop\Godot\snake\lessons\0009-persist-high-score.html'; [PSCustomObject]@{Exists=Test-Path -LiteralPath $lesson; Bytes=(Get-Item -LiteralPath $lesson).Length}; Start-Process -FilePath $lesson`
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