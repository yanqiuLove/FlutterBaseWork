// 第五步 创建 store
// Store接收一个reducer，以及初始化State，我们想用Redux管理全局的状态的话，需要将store储存在应用的入口才行。而在应用打开时要先初始化一次应用的状态。所以在State中添加一个初始化的函数。