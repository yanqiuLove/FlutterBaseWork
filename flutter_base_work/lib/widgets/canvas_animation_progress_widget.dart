import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class CanvasAnimateWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CanvasAnimateWidgetState();
  }
}

class _CanvasAnimateWidgetState extends State<CanvasAnimateWidget> with SingleTickerProviderStateMixin {

  static const MAX_VALUE = 100.0;
  static const VALUE = 60.0;

  AnimationController controller;
  Animation<double> animation;
  var value = VALUE;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration : Duration(seconds: 2), vsync: this);
    animation = Tween(begin: 0.0, end : VALUE).animate(controller)
      ..addListener(() { setState(() {});});
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashBoardPainter(value: animation.value, maxValue: MAX_VALUE),
      size: Size(124, 112),
    );
  }

}

class DashBoardPainter extends CustomPainter {

  static const int GRID_NUM = 24;

  var maxValue;
  var value;

  DashBoardPainter({this.maxValue, this.value});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint();
    //1.绘制背景。
//    _drawBg(canvas, paint, size);
    //2.绘制圆弧。
    _drawArc(canvas, paint, size);
  }

//  _drawBg(Canvas canvas, Paint paint, Size size) {
//    paint..color = Color.fromRGBO(255, 255, 255, 0)
//      ..style = PaintingStyle.fill;
//    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
//  }

  _drawArc(Canvas canvas, Paint paint, Size size) {
//    var padding = 10.0;
//    var width = size.width - 2*padding;
//    var height = size.height - padding;
//    canvas.save();
//    canvas.translate(padding, padding);

    var width = size.width;
    var height = size.height;
    canvas.save();

    //1.绘制灰色的外环。
    paint..color = Colors.red
      ..strokeWidth = 0.0001
      ..style = PaintingStyle.stroke;
//    canvas.drawArc(Rect.fromCircle(center: Offset(width/2, height/2), radius: min(height, width)/2), pi, pi, false, paint);
//    canvas.drawArc(Rect.fromCircle(center: Offset(62, 56), radius: 56), pi, pi, false, paint);
    //2.根据比例绘制白色的外环。
    paint..color = Colors.yellow;
    var faction = value / maxValue;
//    canvas.drawArc(Rect.fromCircle(center: Offset(width/2, height/2), radius: min(height, width)/2), pi, pi, false, paint);
    canvas.drawArc(Rect.fromCircle(center: Offset(62, 86), radius: 56), pi, pi, false, paint);
    //3.绘制刻度的环。
    var arcX = 3.0;
    var arcWidth = 3.0;
    paint..strokeWidth = arcWidth..color = Colors.white10;
//    canvas.drawArc(Rect.fromCircle(center: Offset(width/2, height/2), radius: width/2 - arcX - arcWidth/2), pi, pi, false, paint);

    //4.绘制刻度的横线，已经跨过的部分是白色，否则为浅色。
    paint.strokeWidth = 2.0;
    var threadHold = (value / (maxValue / GRID_NUM));
    for (var i = 0; i <= GRID_NUM; i++) {
      canvas.save();
      paint.color = i <= threadHold ? Colors.cyan : Colors.white;
      canvas.translate(width/2, height/2);
      canvas.rotate(pi*i/GRID_NUM);
      canvas.translate(-width/2, -height/2);
      canvas.drawLine(Offset(arcX, height/2), Offset(arcX+arcWidth, height/2), paint);
      canvas.restore();
    }

    //5.绘制文字。
    TextSpan textSpan = TextSpan(
        style: TextStyle(
            color: Colors.white,
            fontSize: 50
        ),
        text: '${(value as double).toStringAsFixed(0)}'
    );
    TextPainter textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(width/2 - textPainter.width/2, 13));
    canvas.restore();
  }


  @override
  bool shouldRepaint(DashBoardPainter oldDelegate) =>
      (maxValue != oldDelegate.maxValue || value != oldDelegate.value);


}