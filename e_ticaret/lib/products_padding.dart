import 'package:flutter/material.dart';

class ProductsPadding extends StatelessWidget {
  final Widget child;
  const ProductsPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: child,
    );
  }
}
