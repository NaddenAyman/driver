import 'package:flutter/material.dart';
class TextDriver extends StatefulWidget {
TextDriver({
  this.text,
  this.sizeText,
  this.colorText,
  this.align,
  this.direction
});

final String text;
final double sizeText;
final Color colorText;
final TextAlign align;
final TextDirection direction;
  @override
  _TextDriverState createState() => _TextDriverState();
}

class _TextDriverState extends State<TextDriver> {
  @override
  Widget build(BuildContext context) {

      return Text('${widget.text}',
        style: TextStyle(
          fontFamily: 'SourceSansPro-SemiBold',
          fontSize: widget.sizeText,
          color: widget.colorText,
        ),
        textAlign: widget.align,
        textDirection: widget.direction,
        //TextDirection.ltr,

    );
  }
}
