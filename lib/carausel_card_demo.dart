import 'package:flutter/material.dart';
import 'package:flutter_custom_caraousel_v2/flutter_custom_caraousel_v2.dart';

class CarauselDemo extends StatelessWidget {
  const CarauselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 80),
            width: double.infinity,
            child: const CarouselWidgetContent(controller: false),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: const CarouselWidgetContent(controller: true),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: const CarouselWidgetContent(controller: false),
          ),
        ],
      ),
    );
  }
}

class CarouselWidgetContent extends StatelessWidget {
  const CarouselWidgetContent({super.key, required this.controller});
  final bool controller;

  @override
  Widget build(BuildContext context) {
    return CarouselViewV2.weighted(
      flexWeights: [1, 6, 1],
      elevation: 2.00,
      itemSnapping: true,
      padding: const EdgeInsets.all(4),
      autoPlay: controller ? true : false,
      autoPlayInterval: const Duration(seconds: 2),
      children: [
        Container(color: Colors.red, child: Center(child: Text('Slide 1'))),
        Container(color: Colors.blue, child: Center(child: Text('Slide 2'))),
        Container(color: Colors.green, child: Center(child: Text('Slide 3'))),
        Container(color: Colors.red, child: Center(child: Text('Slide 1'))),
        Container(color: Colors.blue, child: Center(child: Text('Slide 2'))),
      ],
    );
  }
}
