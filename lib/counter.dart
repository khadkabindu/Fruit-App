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
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: 140.0,
      child: Row(
        children: <Widget>[
          new IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {
              add();
            },
          ),
          SizedBox(
            width: 10.0,
          ),
          new Text('$_n', style: new TextStyle(fontSize: 30.0)),
          SizedBox(
            width: 10.0,
          ),
          new IconButton(
            icon: const Icon(
              Icons.remove,
              color: Colors.black,
            ),
            onPressed: () {
              minus();
            },
          ),
        ],
      ),
    );
  }
}
