import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'counter.dart';
import 'image_carousel.dart';

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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green.shade100,
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              Container(
                child: IconButton(
                  color: Colors.black,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  tooltip: 'Next page',
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
                size: 50.0,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.green.shade100,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            CarouselWithIndicatorDemo(),
            SizedBox(
              height: 50.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  )),
              height: 500.0,
              width: 500.0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Mango',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('1 each'),
                      SizedBox(
                        height: 20.0,
                      ),
                      CounterDesign(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
