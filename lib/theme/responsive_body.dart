import 'package:flutter/material.dart';

/// Centraliza o conteúdo e limita a largura em telas grandes,
/// mantendo o layout mobile intacto (sem alteração abaixo do maxWidth).
class ResponsiveBody extends StatelessWidget {
  final Widget child;
  final double maxWidth;

  const ResponsiveBody({super.key, required this.child, this.maxWidth = 700});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}