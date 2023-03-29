import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async'; 
/*
class TimerButton extends StatefulWidget {
  final Duration timerTastoPremuto;


  TimerButton(this.timerTastoPremuto);

  @override
  _TimerButtonState createState() => _TimerButtonState();
}

class _TimerButtonState extends State<TimerButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 135.0,
      width: 135.0,
      child: new RaisedButton(
        elevation: 100.0,
        color: Colors.white.withOpacity(.8),
        highlightElevation: 0.0,
        onPressed: () {
          int _start = widget.timerTastoPremuto.inMilliseconds;

          const oneDecimal = const Duration(milliseconds: 100);
          Timer _timer = new Timer.periodic(
              oneDecimal,
                  (Timer timer) =>
                  setState(() {
                    if (_start < 100) {
                      _timer.cancel();
                    } else {
                      _start = _start - 100;
                    }
                  }));

        },
        splashColor: Colors.red,
        highlightColor: Colors.red,
        //shape: RoundedRectangleBorder e tutto il resto uguale
        shape: BeveledRectangleBorder(
            side: BorderSide(color: Colors.black, width: 2.5),
            borderRadius: new BorderRadius.circular(15.0)),
        child: new Text(
          "$_start",
          style: new TextStyle(fontFamily: "Minim", fontSize: 50.0),
        ),
      ),
    );
  }
}*/