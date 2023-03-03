import 'package:flutter/material.dart';

Route altaPageRouteBuilder({required Widget page, required String routeName}) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: const Duration(milliseconds: 1000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;

        var tween = Tween(begin: begin, end: end)
            .chain(CurveTween(curve: Curves.elasticOut));

        return SlideTransition(position: animation.drive(tween), child: child);
      });
}
