# Mission: 独立开发并发布结构清晰的 Godot 游戏

## Why
利用已有的 C#、C++、MATLAB、Python 和 Unity3D 经验，建立 Godot 原生开发思维，并能在真实项目中合理使用 QFramework。最终不依赖逐步教程，独立设计、调试、组织和发布中小型 2D 游戏。

## Success looks like
- 能独立使用 Scene、Node、Resource、Signal 组织游戏项目
- 能用 GDScript 实现并调试完整的 2D 游戏循环
- 能根据需求选择合适的 Godot 节点，而不是机械套用 Unity 模式
- 能根据生命周期与职责边界选择原生机制或 QFramework 抽象
- 能使用 Architecture、Model、System、Utility、Command、Query、Event 组织共享业务
- 能借助 Remote 场景树、Debugger 和 Profiler 定位运行时问题
- 能导出、验证并交付一个可独立运行的完整小游戏

## Constraints
- 以当前贪吃蛇项目作为贯穿课程的实践项目
- 使用 Godot 4.7 与项目已安装的 QFramework GDScript v0.4.1
- 跳过通用编程基础，重点学习 Godot 特有概念及其与 Unity 的差异
- 先理解 Godot 原生机制，再引入框架抽象；不为套框架而增加层级
- 每节课只解决一个小问题，并包含可立即验证的练习

## Out of scope
- 暂不深入引擎源码、GDExtension 和自定义 C++ 模块
- 暂不学习复杂 3D 渲染、联网和多人游戏
- 暂不引入大型项目才需要的复杂 DDD、分布式 CQRS 或通用 Manager 体系
