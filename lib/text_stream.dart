import 'package:example/text_widget.dart';
import 'package:flutter/material.dart';

class TextStream extends StatefulWidget {
  final Stream<String> value;

  const TextStream({Key? key, required this.value}) : super(key: key);

  @override
  State<TextStream> createState() => _TextStreamState();
}

class _TextStreamState extends State<TextStream> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: widget.value,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return TextWidget(text: snapshot.data!);
          }
          else {
            return const TextWidget(text: "Unknown");
          }
        });
  }
}
