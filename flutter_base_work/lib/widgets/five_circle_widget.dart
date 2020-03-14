import 'dart:math';

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

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



//     下边这个是每一个渐变  不是整体渐变
    for (var i = 0; i <= 34; i++) {
      canvas.save();
//      paint.color = i <= threadHold ? Colors.cyan : Colors.white;
      paint.shader = SweepGradient(
        colors: [Color(0x80FFFFFF), Color(0xFF74DCF9)],
//        colors: [Colors.yellow, Colors.cyan],
        startAngle: 5*pi/6,
        endAngle: currentProgress,
      ).createShader(rectTwo);
      canvas.translate(62, 28);
      canvas.rotate(4/3*pi*i/34);
      canvas.translate(-62, -28);
      canvas.drawLine(Offset(3, 28), Offset(3, 28), paint);
      canvas.restore();
    }


    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class DashedArc extends CustomPainter {
  final Color color;

  DashedArc({Color color}) : color = color ?? Colors.white;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: remove me. This makes it easier to tell
    // where the canvas should be
//    canvas.drawRect(
//        Offset.zero & size,
//        Paint()
//          ..color = Colors.black
//          ..style = PaintingStyle.stroke);

    var width = 520, height = 520, scale;

    // this is a simple Boxfit calculation for the `cover` mode. You could
    // use the applyBoxFit function instead, but as it doesn't return a
    // centered rect it's almost as much work to use it as to just do it
    // manually (unless someone has a better way in which case I'm all ears!)
    double rw = size.width / width;
    double rh = size.height / height;

    double actualWidth, actualHeight, offsetLeft, offsetTop;
    if (rw > rh) {
      // height is constraining attribute so scale to it
      actualWidth = rh * width;
      actualHeight = size.height;
      offsetTop = 0.0;
      offsetLeft = (size.width - actualWidth) / 2.0;
      scale = rh;
    } else {
      // width is constraining attribute so scale to it
      actualHeight = rw * height;
      actualWidth = size.width;
      offsetLeft = 0.0;
      offsetTop = (size.height - actualHeight) / 2.0;
      scale = rw;
    }

    canvas.translate(offsetLeft, offsetTop);
    canvas.scale(scale);

    // parameters from the original drawing (guesstimated a bit using
    // preview...)
    const double startX = 60;
    const double startY = 450; // flutter starts counting from top left
    const double dashSize = 15;
    const double gapSize = 35;
    canvas.drawPath(
        dashPath(
            Path()
            // tell the path where to start
              ..moveTo(startX, startY)
            // the offset tells the arc where to end, the radius is the
            // radius of the circle, and largeArc tells it to use the
            // big part of the circle rather than the small one.
            // The implied parameter `clockwise` means that it starts the arc
            // and draw clockwise; setting this to false would result in a large
            // arc below!
              ..arcToPoint(Offset(520 - startX, startY), radius: Radius.circular(260), largeArc: true),
            // dash is `dashSize` long followed by a gap `gapSize` long
            dashArray: CircularIntervalList<double>([dashSize, gapSize]),
            dashOffset: DashOffset.percentage(0.005)),
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeWidth = dashSize);
  }

  @override
  bool shouldRepaint(DashedArc oldDelegate) {
    return oldDelegate.color != this.color;
  }
}


class DashedArcTwo extends CustomPainter {
  final Color color;

  DashedArcTwo({Color color}) : color = color ?? Colors.white;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: remove me. This makes it easier to tell
    // where the canvas should be
//    canvas.drawRect(
//        Offset.zero & size,
//        Paint()
//          ..color = Colors.black
//          ..style = PaintingStyle.stroke);

    var width = 520, height = 520, scale;

    // this is a simple Boxfit calculation for the `cover` mode. You could
    // use the applyBoxFit function instead, but as it doesn't return a
    // centered rect it's almost as much work to use it as to just do it
    // manually (unless someone has a better way in which case I'm all ears!)
    double rw = size.width / width;
    double rh = size.height / height;

    double actualWidth, actualHeight, offsetLeft, offsetTop;
    if (rw > rh) {
      // height is constraining attribute so scale to it
      actualWidth = rh * width;
      actualHeight = size.height;
      offsetTop = 0.0;
      offsetLeft = (size.width - actualWidth) / 2.0;
      scale = rh;
    } else {
      // width is constraining attribute so scale to it
      actualHeight = rw * height;
      actualWidth = size.width;
      offsetLeft = 0.0;
      offsetTop = (size.height - actualHeight) / 2.0;
      scale = rw;
    }

    canvas.translate(offsetLeft, offsetTop);
    canvas.scale(scale);

    // parameters from the original drawing (guesstimated a bit using
    // preview...)
    const double startX = 60;
    const double startY = 450; // flutter starts counting from top left
    const double dashSize = 15;
    const double gapSize = 35;
    canvas.drawPath(
        dashPath(
            Path()
            // tell the path where to start
              ..moveTo(startX, startY)
            // the offset tells the arc where to end, the radius is the
            // radius of the circle, and largeArc tells it to use the
            // big part of the circle rather than the small one.
            // The implied parameter `clockwise` means that it starts the arc
            // and draw clockwise; setting this to false would result in a large
            // arc below!
              ..arcToPoint(Offset(520 - startX, startY), radius: Radius.circular(260), largeArc: true),
            // dash is `dashSize` long followed by a gap `gapSize` long
            dashArray: CircularIntervalList<double>([dashSize, gapSize]),
            dashOffset: DashOffset.percentage(0.005)),
        Paint()
          ..color = Colors.cyan
          ..style = PaintingStyle.stroke
          ..strokeWidth = dashSize);
  }

  @override
  bool shouldRepaint(DashedArc oldDelegate) {
    return oldDelegate.color != this.color;
  }
}