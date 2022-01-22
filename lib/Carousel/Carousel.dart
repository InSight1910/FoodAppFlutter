import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled2/colors.dart';

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
/*CarouselSlider(
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
)*/
class _CarouselState extends State<Carousel> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                enlargeCenterPage: false,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                height: 350.0),
            items: dataSlider
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
            data.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: _current == entry.key ? 12.0 : 9.0,
                  height: _current == entry.key ? 12.0 : 9.0,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == entry.key ? ColorsApp.rodiniaMainColor : ColorsApp.colorDeActivateCarouselItem
                  ),
                ),
              );
            }).toList()
        )
      ],
    );
  }
}
