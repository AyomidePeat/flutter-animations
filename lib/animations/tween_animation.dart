import 'package:flutter/material.dart';
import 'dart:math' as math;

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  var _color = getRandomColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CircleClipper(),
        child: Center(
          child: TweenAnimationBuilder(
            duration: const Duration(seconds: 2),
            builder: (context, Color? color, child) {
              return ColorFiltered(
                  colorFilter: ColorFilter.mode(color!, BlendMode.srcATop),
                  child: child);
            },
            tween: ColorTween(
              begin: getRandomColor(),
              end: _color,
            ),
            onEnd: () {
              setState(() {
                _color = getRandomColor();
              });
            },
            child: Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ),
    );
  }
}

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    final rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);
    path.addOval(rect);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Color getRandomColor() => Color(0xFF000000 + math.Random().nextInt(0x00FFFFFF));
