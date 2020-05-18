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

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.amber[200],
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
        backgroundColor: Colors.amber[200],
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
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Product Description',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text('Mangoes tropical taste has a universal appeal. '
                          'The meat has a sweatness of something that is great.'
                          'Mangoes tropical taste has a universal appeal. '
                          'The meat has a sweatness of something that is great.'),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: <Widget>[
                          ButtonTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.amber[200]),
                            ),
                            height: 70.0,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 0.0,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.amber[200],
                                size: 40.0,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          ButtonTheme(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            height: 70.0,
                            minWidth: 260.0,
                            child: RaisedButton(
                              elevation: 0.0,
                              color: Colors.amber[300],
                              onPressed: () {
                                setState(() {
                                  Icon(Icons.favorite);
                                });
                              },
                              child: Text(
                                'Add to cart',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
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
