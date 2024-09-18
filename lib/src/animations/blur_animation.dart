import 'dart:ui';

import 'package:flutter/material.dart';

class BlurAnimation extends StatelessWidget {
  const BlurAnimation({super.key, required this.animacionBlur});
  final Widget animacionBlur;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 20.0),
        child: animacionBlur,
      ),
    );
  }
}
