import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Map> data = [
  {
    "img": 'assets/images/Carousel1.png',
    "text1": 'Order from your favourite',
    "text2": "stores or vendors"
  },
  {
    "img": 'assets/images/Carousel2.png',
    "text1": 'Choose form a wide range of',
    "text2": "delicious meals"
  }
];

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

final List<Widget> dataSlider = data.map<Widget>((e) => Builder(builder: (BuildContext context) {
      return Column(children: [
        Text(
          e["text1"],
          style: const TextStyle(
              fontSize: 18,
              decoration: TextDecoration.none,
              color: Color.fromRGBO(28, 28, 28, 1)),
        ),
        Text(
          e["text2"],
          style: const TextStyle(
              fontSize: 18,
              decoration: TextDecoration.none,
              color: Color.fromRGBO(28, 28, 28, 1)),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          e["img"],
          height: 267,
        ),
      ]);
    }))
        .toList();

class _CarouselState extends State<Carousel> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();

    return Column(
      children: [
        CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                disableCenter: true,
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                height: 350.0),
            items: dataSlider
        ),
        Text('hello')
      ],
    );
  }
}
