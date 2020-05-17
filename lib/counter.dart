import 'package:flutter/material.dart';

class CounterDesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterDesign();
  }
}

class _CounterDesign extends State<CounterDesign> {
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          new FloatingActionButton(
            onPressed: add,
            child: new Icon(
              Icons.add,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          new Text('$_n', style: new TextStyle(fontSize: 30.0)),
          SizedBox(
            width: 10.0,
          ),
          new FloatingActionButton(
            onPressed: minus,
            child: new Icon(const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
        ],
      ),
    );
  }
}
