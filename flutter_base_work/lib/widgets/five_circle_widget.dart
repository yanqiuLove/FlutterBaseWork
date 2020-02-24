import 'dart:math';

import 'package:flutter/material.dart';

import 'circle_progress_widget.dart';


/// 自定义绘制基础学习

class FivePainter extends CustomPainter{

  double allProgress = 4*pi/3;
  double currentProgress = 1*(4*pi/3);

//  Paint _paint = Paint()
//    ..color = Colors.deepOrange//画笔颜色
//    ..strokeCap = StrokeCap.round //画笔笔头类型
//    ..isAntiAlias = true //是否开启抗锯齿
//    ..blendMode = BlendMode.src//颜色混合模式
//    ..style = PaintingStyle.stroke //画笔样式，默认为填充
//    ..colorFilter = ColorFilter.mode(Colors.blueAccent,
//        BlendMode.src) //颜色渲染模式
//    ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) //模糊遮罩效果
//    ..filterQuality = FilterQuality.high //颜色渲染模式的质量
//    ..strokeWidth = 3.0; //画笔的宽度


  @override
  void paint(Canvas canvas, Size size) {

    // 第一步  画底部的白色整体圆弧
    Paint paint = Paint()
      ..isAntiAlias = true
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    Path path = new Path()..moveTo(62, 56);
    Rect rect = Rect.fromCircle(center: Offset(62, 56), radius: 56.0);
    path.arcTo(rect, 5*pi/6, 4 * pi / 3, true);
    canvas.drawPath(path, paint);



    // 第二步  画进度圆弧
    Paint paintTwo = Paint()
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    Path pathTwo = new Path()..moveTo(62, 56);
    Rect rectTwo = Rect.fromCircle(center: Offset(62, 56), radius: 56.0);

    paintTwo.shader = SweepGradient(
//      colors: [Color(0x80FFFFFF), Color(0xFF74DCF9)],
        colors: [Colors.yellow, Colors.cyan],
      startAngle: 5*pi/6,
      endAngle: currentProgress,
    ).createShader(rectTwo);
    pathTwo.arcTo(rect, 5*pi/6, currentProgress, true);
    canvas.drawPath(pathTwo, paintTwo);



    // 下边这个是每一个渐变  不是整体渐变
//    for (var i = 0; i <= 34; i++) {
//      canvas.save();
////      paint.color = i <= threadHold ? Colors.cyan : Colors.white;
//      paint.shader = SweepGradient(
//        colors: [Color(0x80FFFFFF), Color(0xFF74DCF9)],
////        colors: [Colors.yellow, Colors.cyan],
////        startAngle: 5*pi/6,
////        endAngle: currentProgress,
//      ).createShader(rectTwo);
//      canvas.translate(62, 28);
//      canvas.rotate(4/3*pi*i/34);
//      canvas.translate(-62, -28);
//      canvas.drawLine(Offset(3, 28), Offset(3, 28), paint);
//      canvas.restore();
//    }


    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}