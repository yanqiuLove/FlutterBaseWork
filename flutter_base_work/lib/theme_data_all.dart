/// 主题所有属性
//
//可以设置的属性	属性类型	对应的色值	属性解释
//primaryColor	Color		App主要部分的背景色（ToolBar,Tabbar等）
//primaryColorLight	Color		primaryColor的较浅版本
//primaryColorDark	Color		primaryColor的较深版本
//accentColor	Color		前景色(按钮、文本、覆盖边缘效果等)
//canvasColor	Color		MaterialType.canvas Material的默认颜色。
//scaffoldBackgroundColor	Color		作为Scaffold下的Material默认颜色，用于materia应用程序或app内页面的背景色。
//bottomAppBarColor	Color		bottomAppBarColor的默认颜色。这可以通过指定BottomAppBar.color来覆盖。
//cardColor	Color		用在卡片(Card)上的Material的颜色。（类似卡片展示形式时使用到的颜色）
//dividerColor	Color		分隔符(Dividers)和弹窗分隔符(PopupMenuDividers)的颜色，也用于ListTiles和DataTables的行之间。要创建使用这种颜色的合适的边界，请考虑Divider.createBorderSide。也可以理解为分割线的颜色
//focusColor	Color		焦点颜色（跟dividerColor属于同一级别，也可以充当分割线的更多配色）
//hoverColor	Color		跟dividerColor、focusColor同一级别，也可以充当分割线的更多配色
//highlightColor	Color		用于墨水喷溅动画或指示菜单被选中时的高亮颜色
//splashColor	Color		墨水溅出的颜色（水波纹颜色）
//selectedRowColor	Color		用于高亮选定行的颜色。
//unselectedWidgetColor	Color		小部件处于非活动(但启用)状态时使用的颜色。例如，未选中的复选框。通常与accentColor形成对比。
//disabledColor	Color		无效的部件(widget)的颜色，不管它们的状态如何。例如，一个禁用的复选框(可以选中或不选中)。
//buttonColor	Color		Material中RaisedButtons使用的默认填充色。
//secondaryHeaderColor	Color		有选定行时PaginatedDataTable标题的颜色
//textSelectionColor	Color		文本字段(如TextField)中文本被选中的颜色。
//cursorColor	Color		在 Material-style 文本字段(如TextField)中光标的颜色。
//textSelectionHandleColor	Color		用于调整当前选定文本部分的句柄的颜色
//backgroundColor	Color		与primaryColor对比的颜色(例如 用作进度条的剩余部分)。
//dialogBackgroundColor	Color		Dialog元素的背景色
//indicatorColor	Color		abBar中选项选中的指示器颜色。
//hintColor	Color		用于提示文本或占位符文本的颜色，例如在TextField中。
//errorColor	Color		用于输入验证错误的颜色，例如在TextField中。
//toggleableActiveColor	Color		用于突出显示切换Widget（如Switch，Radio和Checkbox）的活动状态的颜色。
//
//ButtonThemeData（按钮主题涉及到的颜色）
//buttonColor	Color		按钮颜色
//disabledColor	Color		图标组件禁用状态的颜色，默认为主题里的禁用颜色，也可以设置为其他颜色
//highlightColor	Color		高亮颜色
//splashColor	Color		水波纹颜色
//
//ToggleButtonsThemeData（ToggleButtons主题涉及到的颜色）
//color	Color		Text / Icon 状态为已启用并且未选中时的颜色
//selectedColor	Color		选中时的颜色
//disabledColor	Color		未启用时的颜色
//fillColor	Color		选中按钮的背景颜色
//focusColor	Color		当按钮中具有输入焦点时填充的颜色
//highlightColor	Color		点击时的颜色
//hoverColor	Color		当按钮上有指针悬停时用于填充按钮的颜色
//splashColor	Color		点击后的颜色
//borderColor	Color		边框颜色
//selectedBorderColor	Color		选中的边框颜色
//disabledBorderColor	Color		不可用时边框颜色
//Color
//FloatingActionButtonThemeData
//foregroundColor	Color		图标或文本颜色
//backgroundColor	Color		背景色
//focusColor	Color		当按钮中具有输入焦点时填充的颜色
//hoverColor	Color		当按钮上有指针悬停时用于填充按钮的颜色
//splashColor	Color		点击后的颜色
//
//
//InputDecorationTheme			输入框的装饰器，用来修改外观
//fillColor	Color		输入框背景填充色
//focusColor	Color
//hoverColor	Color
//
//
//IconThemeData
//color	Color		iconfont的默认颜色
//
//
//SliderThemeData（Slider主题相关）
//activeTrackColor	Color		[Slider]轨道的颜色在[Slider.min]位置和当前拇指位置之间。
//inactiveTrackColor	Color		[滑块]轨迹的颜色介于当前拇指位置和[Slider.max]位置。
//disabledActiveTrackColor	Color		当禁用[Slider]时，[Slider]轨道的颜色在[Slider.min]位置和当前拇指位置之间。
//disabledInactiveTrackColor	Color		[Slider]禁用时，[Slider]轨道的颜色介于当前拇指位置和[Slider.max]位置之间。
//activeTickMarkColor	Color		在[Slider.min]位置和当前拇指位置之间绘制的轨道刻度线的颜色。
//inactiveTickMarkColor	Color		在当前拇指位置和[Slider.max]位置之间绘制的曲目刻度线的颜色。
//disabledActiveTickMarkColor	Color		禁用[Slider]时，在[Slider.min]位置和当前拇指位置之间绘制的曲目刻度线的颜色。
//disabledInactiveTickMarkColor	Color		禁用[Slider]时，在当前拇指位置和[Slider.max]位置之间绘制的曲目刻度线的颜色。
//thumbColor	Color		给[thumbShape]绘制颜色。
//overlappingShapeStrokeColor	Color		拇指重叠时，顶部[rangeThumbShape]的边界颜色；值指示符重叠时，顶部[rangeValueIndicatorShape]的边界颜色。
//disabledThumbColor	Color		禁用[Slider]时赋予[thumbShape]绘制的颜色。
//overlayColor	Color		这通常是半透明的颜色。
//valueIndicatorColor	Color		给[valueIndicatorShape]绘制颜色。
//
//TabBarTheme			切换组件
//labelColor	Color		选中时文字颜色
//unselectedLabelColor	Color		未选中时文字颜色
//
//CardTheme			卡片组件
//color	Color		卡片本身的颜色
//
//ChipThemeData
//backgroundColor	Color		背景色
//deleteIconColor	Color		deleteIcon颜色
//disabledColor	Color		不可点击时的颜色
//selectedColor	Color		选中时的颜色
//secondarySelectedColor	Color
//shadowColor	Color		阴影颜色
//selectedShadowColor	Color		选中时阴影颜色
