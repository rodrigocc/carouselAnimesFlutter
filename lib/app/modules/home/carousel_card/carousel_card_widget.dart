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
      builder: (context) =>  CarouselSlider(
              options: CarouselOptions(                
                  scrollDirection: Axis.horizontal,
                  height: 400.0,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, context) {
                    controller.setCurrentIndex(index);
                  }),
              items: controller.cardList
                  .map((e) => GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage(e), fit: BoxFit.cover)),
                        ),
                        onTap: () {
                          controller.setCardExpandedStatus(true);
                          print('Status do controller ${controller.cardIsExpanded}');
                        },
                      ))
                  .toList()),
    ));
  }
}
