import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:shop_app/patterns/colors_flyweight.dart';

class ProductImagesSlider extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return ImageSlideshow(
      indicatorColor: ra, //color_flyweight
      indicatorBackgroundColor: w,
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(padding: EdgeInsets.all(8),
        child: Image.asset("images/p1.png"),),
        Padding(padding: EdgeInsets.all(8),
        child: Image.asset("images/p2.png"),),
        Padding(padding: EdgeInsets.all(8),
        child: Image.asset("images/p1.png"),),
        Padding(padding: EdgeInsets.all(8),
        child: Image.asset("images/p2.png"),),
      ],
    );
  }
}