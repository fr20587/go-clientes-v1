import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';

import '../controller/request_controller.dart';

class WidgetErrorLoading extends StatefulWidget {
  final RequestController controller;
  const WidgetErrorLoading(this.controller, {super.key});

  @override
  State<WidgetErrorLoading> createState() => _WidgetErrorLoadingState();
}

class _WidgetErrorLoadingState extends State<WidgetErrorLoading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: FxSpacing.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: FxText.bodyLarge(
              "¡Ha ocurrido un error inesperado!",
              fontWeight: 300,
            ),
          ),
          FxText.bodyLarge(
            "Reintentar",
            fontWeight: 500,
          ),
          IconButton(
              onPressed: () async {
                await widget.controller.cargaedit();
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
    );
  }
}
