// scoped_model 练习使用

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_base_work/scoped_model/count_model.dart';
import 'package:flutter_base_work/widgets/canvas_animation_progress_widget.dart';
import 'package:flutter_base_work/widgets/custom_painter_widget.dart';
import 'package:flutter_base_work/widgets/five_circle_widget.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:path_drawing/path_drawing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //创建顶层状态
  CountModel countModel = CountModel();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CountModel>(
      model: countModel,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.cyan,
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          accentColor: Colors.cyan,
          primaryColorLight: Colors.red,
          colorScheme: ColorScheme.dark(),
        ),
        home: MyHomePage(title: '首页'),
        routes: {
          "home": (context) => MyHomePage(),
          "secondPage": (context) => MySecondPage(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // 星体
  List celestialBodyIconfontList = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.security),
    Icon(Icons.send),
    Icon(Icons.hd),
    Icon(Icons.landscape),
    Icon(Icons.language),
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.security),
    Icon(Icons.send),
    Icon(Icons.hd)
  ];
  List celestialBodyNameList = [
    "Sun",
    "Moon",
    "Merc",
    "Venu",
    "Mars",
    "Jupi",
    "Satu",
    "Uran",
    "Nept",
    "Plut",
    "Node",
    "Sout"
  ];


  // 星座
  List constellationNameList = [
    "Ari",
    "Tau",
    "Gem",
    "Can",
    "Leo",
    "Vir",
    "Lib",
    "Sco",
    "Sag",
    "Cap",
    "Aqu",
    "Pis"
  ];
  List constellationIconfontList = [
    "Ari",
    "Tau",
    "Gem",
    "Can",
    "Leo",
    "Vir",
    "Lib",
    "Sco",
    "Sag",
    "Cap",
    "Aqu",
    "Pis"
  ];

  // 宫位
  List palaceList = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12"
  ];

  Widget iconWidget = Container();
  String xingzuo = "";
  String shuzi = "";


  int contents = 0;
  int lastNumber = 0;

  List celestialBodyNumberList = [];
  List constellationNumberList = [];
  List palaceNumberList = [];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    // 生成三组随机数 长度为12
//    while(celestialBodyNumberList.length < 12) {
//      int randomNumber = Random.secure().nextInt(11);
//      if(!celestialBodyNumberList.contains(randomNumber)) {
//        celestialBodyNumberList.add(randomNumber); //往集合里面添加数据。
//      }
//    }
//
//    while(constellationNumberList.length < 12) {
//      int randomNumber = Random.secure().nextInt(11);
//      if(!constellationNumberList.contains(randomNumber)) {
//        constellationNumberList.add(randomNumber); //往集合里面添加数据。
//      }
//    }
//
//    while(palaceNumberList.length < 12) {
//      int randomNumber = Random.secure().nextInt(11);
//      if(!palaceNumberList.contains(randomNumber)) {
//        palaceNumberList.add(randomNumber); //往集合里面添加数据。
//      }
//    }
//    print(celestialBodyNumberList);
//    print(constellationNumberList);
//    print(palaceNumberList);


  _starAnimation();

  }

  _starAnimation() async {
    Timer.periodic( Duration( milliseconds: (2200/12).toInt() ), ( timer ) {
      // 每隔 1 秒钟会调用一次，如果要结束调用
      int suijishu = Random.secure().nextInt(11);
      if (lastNumber == suijishu) {
        suijishu = Random.secure().nextInt(11);
        lastNumber = suijishu;
      }
      print(suijishu);
      contents ++;
      setState(() {
        shuzi = palaceList[suijishu];
        xingzuo = constellationNameList[suijishu];
        iconWidget = celestialBodyIconfontList[suijishu];
      });
      if (contents == 12) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
//      body: Center(
////        child: CanvasAnimateWidget(),
//      child: Container(
//        width: 124,
//        height: 93,
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//              begin: Alignment.topCenter,
//              end: Alignment.bottomCenter,
//              colors: [
//                Color(0xFF95DAFF),
//                Color(0xFFD29EFF),
//              ]),
//        ),
//        child: CanvasAnimateWidget(),
//      ),
//      ),

//    body: Icon(IconData(0xe658, fontFamily: 'iconfont')),

//    body: SingleChildScrollView(
//        child: Center(
//          child: Padding(
//            padding: EdgeInsets.only(top: 100),
//            child: Container(
//              width: 124,
//              height: 93,
////              decoration: BoxDecoration(
////                gradient: LinearGradient(
////                    begin: Alignment.topCenter,
////                    end: Alignment.bottomCenter,
////                    colors: [
////                      Color(0xFF95DAFF),
////                      Color(0xFFD29EFF),
////                    ]),
////              ),
//              child: CustomPaint(
//                  size: Size(124,93),
//                  painter: MyPainter()),
//            ),
//          ),
//        )),

//        body: CircleProgressBar(
//            radius: 120.0,
//            dotColor: Colors.pink,
//            dotRadius: 18.0,
//            shadowWidth: 2.0,
//            progress: 0.4,
//            progressChanged: (value) {
//              setState(() {
////    progress = value;
//              });
//            })

      // 渐变圆弧  和虚线单个渐变圆弧
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 124,
                height: 93,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF95DAFF),
                        Color(0xFFD29EFF),
                      ]),
                ),
                child: CustomPaint(
                    size: Size(124,93),
                    painter: DashedArc(color: Colors.white)),
              ),
              SizedBox(
                height: 30,
              ),

            ],
          )),

//      body: Center(
//        child: Container(
//          width: 300,
//          height: 300,
//          color: Colors.cyan,
//          child: _getToolWidget(),
//        ),
//      ),
    );
  }
  Widget _getToolWidget() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/login_dice_bg.png"),
                  ),
                ),
                child: iconWidget,
              ),
              Text(xingzuo)
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/login_dice_bg.png"),
                  ),
                ),
                child: Icon(Icons.home),
              ),
              Text("太阳")
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/login_dice_bg.png"),
                  ),
                ),
                child: iconWidget,
              ),
              Text(shuzi)
            ],
          ),
        ],
      ),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      Navigator.of(context).pushNamed("secondPage");
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return ScopedModelDescendant<CountModel>(builder: (context, child, model) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text(widget.title),
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                model.count.toString(),
//                style: Theme.of(context).textTheme.display1,
//              ),
//            ],
//          ),
//        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: () {
//            Navigator.of(context).pushNamed("secondPage");
//          },
//          tooltip: 'Increment',
//          child: Icon(Icons.send),
//        ), // This trailing comma makes auto-formatting nicer for build methods.
//      );
//    });
//  }
//}

class MySecondPage extends StatefulWidget {
  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CountModel>(builder: (context, child, model) {
      return Scaffold(
        appBar: AppBar(
          title: Text("第二"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                model.count.toString(),
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    });
  }
}
