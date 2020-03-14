// scoped_model 练习使用

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
//      body: SingleChildScrollView(
//          child: Center(
//            child: Padding(
//              padding: EdgeInsets.only(top: 100),
//              child: Container(
//                width: 124,
//                height: 93,
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                    begin: Alignment.topCenter,
//                    end: Alignment.bottomCenter,
//                    colors: [
//                      Color(0xFF95DAFF),
//                      Color(0xFFD29EFF),
//                    ]),
//              ),
//                child: CustomPaint(
//                    size: Size(124,93),
//                    painter: DashedArc(color: Colors.white)),
//              ),
//            ),
//          )),
    
//    body: Container(
////      color: Colors.yellow,
//      child: Flex(
//        direction: Axis.horizontal,
//        children: <Widget>[
//          Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Container(
//                width: 20,
//                height: 10,
//                color: Colors.red,
//              ),
//              Container(
//                width: 60,
//                height: 10,
//                color: Colors.cyan,
//              ),
//            ],
//          ),
//          Expanded(child: Text("哈哈哈哈哈发多付大恒科技发卡行发卡机和罚款和罚款交话费卡交话费卡读后感方大化工发回给")),
//        ],
//      ),
//    ),

    body: Container(
      child: RaisedButton(
        child: Text("你好哈哈哈", style: TextStyle(color: Colors.red),),
      ),
    )





//        Center(
////          child: CircularProgressIndicator(),
//          child: Icon(IconData(0xe658, fontFamily: 'iconfont')),
//        )
        // This trailing comma makes auto-formatting nicer for build methods.
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
