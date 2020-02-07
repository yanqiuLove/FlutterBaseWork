import 'package:flutter/material.dart';


//class MyPainter extends CustomPainter {
//  @override
//  void paint(Canvas canvas, Size size) {
//    var paint = Paint() // 创建一个画笔并配置其属性
//      ..strokeWidth = 20 // 画笔的宽度
//      ..isAntiAlias = true // 是否抗锯齿
//      ..color=Color(0x77cdb175); // 画笔颜色
//
//    var max =  size.width; // size获取到宽度
//    var dashWidth = 5;
//    var dashSpace = 5;
//    double startX = 0;
//    final space = (dashSpace + dashWidth);
//
//    while (startX < max) {
//      canvas.drawLine(Offset(startX, 100.0), Offset(startX + dashWidth, 100.0), paint);
//      startX += space;
//    }
//  }
//
//  @override
//  bool shouldRepaint(CustomPainter oldDelegate) => false;
//}


/// 自定义绘制基础学习

class MyPainter extends CustomPainter{

  Paint _paint = Paint()
    ..color = Colors.deepOrange//画笔颜色
    ..strokeCap = StrokeCap.round //画笔笔头类型
    ..isAntiAlias = true //是否开启抗锯齿
    ..blendMode = BlendMode.src//颜色混合模式
    ..style = PaintingStyle.stroke //画笔样式，默认为填充
    ..colorFilter = ColorFilter.mode(Colors.blueAccent,
        BlendMode.src) //颜色渲染模式
    ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) //模糊遮罩效果
    ..filterQuality = FilterQuality.high //颜色渲染模式的质量
    ..strokeWidth = 3.0; //画笔的宽度

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint() // 创建一个画笔并配置其属性
      ..strokeWidth = 2 // 画笔的宽度
      ..isAntiAlias = true // 是否抗锯齿
      ..color=Color(0x77cdb175) // 画笔颜色
      ..style = PaintingStyle.stroke; //画笔样式，默认为填充

    var max =  size.width; // size获取到宽度
    var dashWidth = 5;
    var dashSpace = 5;
    double startX = 0;
    final space = (dashSpace + dashWidth);

    while (startX < max) {
      canvas.drawCircle(Offset(62, 56), 56, _paint);
      canvas.drawLine(Offset(startX, 100.0), Offset(startX + dashWidth, 100.0), paint);
      startX += space;
    }

    var path = Path();
    path.moveTo(size.width / 3, size.height * 3 / 4);
    path.lineTo(size.width / 2, size.height * 5 / 6);
    path.lineTo(size.width * 3 / 4, size.height * 4 / 6);

    canvas.drawPath(path, paint);



    Paint painttt = Paint();

    painttt.color = Colors.red;
    painttt.style = PaintingStyle.stroke;
    painttt.strokeWidth = 3;

    var startPoint = Offset(0, size.height / 2);
    var controlPoint1 = Offset(size.width / 4, size.height / 3);
    var controlPoint2 = Offset(3 * size.width / 4, size.height / 3);
    var endPoint = Offset(size.width, size.height / 2);

    var pathtt = Path();
    pathtt.moveTo(startPoint.dx, startPoint.dy);
    pathtt.cubicTo(controlPoint1.dx, controlPoint1.dy,
        controlPoint2.dx, controlPoint2.dy,
        endPoint.dx, endPoint.dy);

    Rect rect = Offset(0, size.height / 2) & Size(
        size.width - 5,
        size.height - 5
    );

    painttt.shader = SweepGradient(
      startAngle: 0.0,
      endAngle: 60,
      colors: [Colors.red, Colors.blue],
      stops: [70, 80],
    ).createShader(rect);

    canvas.drawPath(pathtt, painttt);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}