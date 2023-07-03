import 'package:flutter/material.dart';

class BaseWidget extends StatefulWidget {
  final Widget widgetItem;

  const BaseWidget({Key? key, required this.widgetItem}) : super(key: key);

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  double _x = 0.0;
  double _y = 0.0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _x,
      top: _y,
      child: LongPressDraggable(
          feedback: widget.widgetItem,
          childWhenDragging: const SizedBox(),
          onDragEnd: (details) {
            setState(() {
              _x = details.offset.dx;
              _y = details.offset.dy;
            });
          },
          child: widget.widgetItem,

          ),
    );
  }
}
