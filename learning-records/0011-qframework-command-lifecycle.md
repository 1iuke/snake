# 已掌握 QFramework Command 的生命周期

学习者已理解 Model、System、Utility 是由 Architecture 注册并长期持有的共享对象，而 Command 是按需构造、执行后释放的一次性用例对象；因此 Command 无需注册。后续可以直接进入 Event 与 CQRS 读写方向，不必再讲解命令模式的基本动机。

## Evidence

学习者完成了 `CompleteGameCommand` 的实现与调用迁移，并准确解释了 Command 不需要注册的原因。
