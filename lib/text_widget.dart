import 'package:flutter/material.dart';


class TextWidget extends StatefulWidget {
  final String text;
  const TextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100.0,
      width: 100.0,
      child: Text(
        widget.text,
        style: const TextStyle(fontSize: 20.0),
      ),
    );
  }
}
