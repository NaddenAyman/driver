import 'package:flutter/material.dart';
class RadioListDriver extends StatefulWidget {
  RadioListDriver({
    this.subText,
    this.titleText,
    this.icon,
    this.sizeText,
    this.onChanged,
});

  final String subText;
  final String titleText;
  final IconData icon;
  final double sizeText;
  final Function onChanged;


  @override
  _RadioListDriverState createState() => _RadioListDriverState();
}

class _RadioListDriverState extends State<RadioListDriver> {
  int val;


    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(5.0),
        height: 80,
        margin: EdgeInsets.only(right: 30, left: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF0F2F3),
        ),
        child: RadioListTile(
          subtitle: Text('${widget.subText}'),
          title:
          Row(
            children: [
              Flexible(
                child: Text('${widget.titleText}',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro-SemiBold',
                    fontSize: widget.sizeText,
                    //color: Color(0xFF000000),
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 5.0,),
              Icon(
                widget.icon,
                color: Color(0xFFFFAB4C),
              ),
            ],
          ),
          //toggleable: true,
          value: 2,
          groupValue: val,
          activeColor: Color(0xFFFFAB4C),
          onChanged: (int number) {
            widget.onChanged(number);
          },
        ),
      );

    }
  }


