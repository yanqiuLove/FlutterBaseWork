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
///