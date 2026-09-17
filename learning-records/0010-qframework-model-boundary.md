# 已掌握 QFramework Model 的共享边界

学习者已能根据状态的生命周期与共享范围决定数据所有权：单局且随重开归零的 `score` 留在场景 Controller，跨局、跨场景并需持久化的 `high_score` 与 `games_played` 进入 `ProgressModel`。这意味着后续可继续学习 Utility、Command 与 Event，而无需再解释“所有变量都放进 Model”的误区。

## Evidence

学习者完成了 `ProgressModel` 的生成、Architecture 注册和实际访问迁移，并准确说明 `score` 不进入 Model 的原因。
