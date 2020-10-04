import 'package:carouselanimes/app/modules/home/carousel_card/carousel_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
                child: Icon(
                  Icons.format_align_justify,
                  color: Colors.white,
                  size: 30.0,
                ),
                alignment: Alignment.centerRight),
            Text(
              'Anime List',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontFamily: 'Roboto'
              ),
            ),
            CarouselCardWidget(),
          ],
        ),
      ),
    );
  }
}
