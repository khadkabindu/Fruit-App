import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow.shade700,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Image.asset(
                    'images/icons8-back-24.png',
                    height: 10.0,
                  ),
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),
            SizedBox(
              height: 250.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  )),
              height: 500.0,
            ),
          ],
        ),
      ),
    );
  }
}
