import 'package:flutter/material.dart';
import 'package:flutter_slider/src/intro_page_item.dart';
import 'package:flutter_slider/src/intro_page_view.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  navToAnotherPage(x) {
    print(x.id);
    print(this);
        // Navigator.push(context, new MaterialPageRoute(
        //   builder: (BuildContext context) => new AnotherPage(),
        // ));
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SliderView(
        slideItems: <SlideItem>[
          new SlideItem(title: 'Writing things together is what we do best!', category: 'COLLABORATION', imageUrl: 'assets/1.png',id: 1),
          new SlideItem(title: 'Occasionally wearing pants is a good idea.', category: 'CULTURE', imageUrl: 'assets/2.png',id:2),
          new SlideItem(title: 'We might have the best team spirit ever.', category: 'SPIRIT', imageUrl: 'assets/3.png',id:3),
        ],
        viewportFraction: 1.00,
        height: 300.0,
        onTapUp: () => navToAnotherPage(x),
      )
    );
  }
}

class AnotherPage extends StatelessWidget {

  AnotherPage({
    this.id
  });

  final int id;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: new Text(
'sad'          ),
        ),
      );
  }
}