/// 每日总结

/// 解决键盘弹起之后  Stack底部布局跟随键盘弹起问题
/// 设置Scaffold的属性resizeToAvoidBottomPadding为false,
///
///
/// 使用i18n国际化时无法自动生成文件是.idea文件下缺少misc.xml文件
///
///
/// Row布局中  两端布局  中间空白不响应事件的解决方案两种
/// 1.嵌套一层Container  背景色设置为空白
/// SizedBox(width: 15, child: Container(color: Colors.transparent,),),
/// 2.设置 GestureDetector 的 behavior 属性（推荐方式）
/// behavior 默认值为 HitTestBehavior.deferToChild，我们这里将其设置为 HitTestBehavior.translucent。
///
///
/// ?. 表达式的含义  ?? 表达式的含义
/// bool testBool = testa() ?. testb() ?? false
/// ?. 在左边为null的时候阻断右边的调用 ?? 运算符主要作用是在左侧表达式为null的时候为其设置一个默认值
///
///
/// 使用国际化时 可以使用i18n 也可以使用intl工具 需要flutter_localizations:sdk: flutter
///
///
/// 需要设置组件透明度的时候  需要用Opacity组件包裹
///
///
/// 如何理解Route 和 Navigator Route 是应用程序的"屏幕"或"页面"的抽象 可以理解为Activity Navigator 是管理Route的Widget
/// MaterialPageRoute widget 是一种模板路由 可以根据平台自适应替换整个页面
///
///
/// flutter 是如何跳转到其他APP的  可以使用url_launcher插件 具体如何使用 还需验证调试
///
///
/// Dart没有进程和线程的概念，所有的Dart代码都是在isolate上运行的，先运行同步代码，在运行异步代码就是，即使我异步代码写在最前面，同步代码写在最后面，不好意思，我也是先运行后面的同步代码，同步代码都运行完后，在运行前面的异步代码。
/// 异步代码是运行在event loop里的
/// Dart的Event Loop是先判断 microtask queue里有没有task，有的话运行microtask，microtask运行完后，在运行event queue里的event task,一个event task 运行完后，再去运行 microtask queue，然后在运行event queue。
/// https://juejin.im/post/5c338bdb6fb9a04a01647eb9
///
///
/// 使用 ProgressIndicator 实现loading框 CircularProgressIndicator()
///
///
/// 学习使用切换主题可以参考flutter官方提供的 flutter_gallery demo
/// 记录两个github实用项目链接
/// https://github.com/nisrulz/flutter-examples   https://github.com/iampawan/FlutterExampleApps
///
///
/// 加载本地缓存图片 记录使用一个插件 cached_network_image 插件 在加载成功之后再次运行优先加载本地缓存中的图片
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///