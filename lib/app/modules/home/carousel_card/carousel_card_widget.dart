import 'package:carouselanimes/app/modules/home/carousel_card/carousel_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CarouselCardWidget extends StatefulWidget {
  @override
  _CarouselCardWidgetState createState() => _CarouselCardWidgetState();
}

class _CarouselCardWidgetState
    extends ModularState<CarouselCardWidget, CarouselCardController> {
  @override
  Widget build(BuildContext context) {
    print(controller.cardIsExpanded);
    return Center(
        child: Observer(
      builder: (context) => CarouselSlider(
          options: CarouselOptions(
              height: controller.cardIsExpanded ? 500 : 400,
              scrollDirection: Axis.horizontal,
              initialPage: 0,
              enlargeCenterPage: true,
              onPageChanged: (index, context) {
                controller.setCurrentIndex(index);
              }),
          items: controller.cardList
              .map((e) => GestureDetector(
                    child: AnimatedContainer(
                      child: controller.cardIsExpanded
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        width: 25.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 2,
                                              )
                                            ]),
                                        child: Icon(
                                          Icons.clear,
                                          color: Colors.black38,
                                          size: 20,
                                        ),
                                      ),
                                      onTap: () {
                                        controller.setCardExpandedStatus(false);
                                      },
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.0, 0.0, 10.0, 10.0),
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2,
                                          )
                                        ]),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.play_arrow,
                                          color: Colors.black38,
                                        ),
                                        onPressed: null),
                                  ),
                                )
                              ],
                            )
                          : Container(),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover)),
                      duration: Duration(seconds: 1),
                    ),
                    onTap: () {
                      controller.setCardExpandedStatus(true);
                      print(
                          'Status do controller ${controller.cardIsExpanded}');
                    },
                  ))
              .toList()),
    ));
  }
}
