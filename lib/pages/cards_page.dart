import 'package:flutter/material.dart';
import 'package:flutter_arca_ui/cards/cards_widget.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
// ignore: import_of_legacy_library_into_null_safe

class CardsTab extends StatefulWidget {
  const CardsTab({super.key});

  @override
  State<CardsTab> createState() => _CardsTabState();
}

class _CardsTabState extends State<CardsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          alignment: Alignment.topRight,
          constraints: const BoxConstraints.expand(height: 170),
          child: imageSlider(context),
        ),
        listItem('Default'),
        listItem('Transfers'),
        listItem('Limits'),
        listItem('Card transactions'),
        listItem('Card transactions'),
        listItem('Card transactions'),
        listItem('Card transactions'),
        listItem('Card transactions'),
        listItem('Card transactions'),
        listItem('Card transactions'),
        listItem('Card transactions'),
        listItem('Card transactions'),
      ],
    );
  }

  Swiper imageSlider(context) {
    return Swiper(
      loop: false,
      itemBuilder: (BuildContext context, int index) {
        return const CardsWidget();
      },
      itemCount: 3,
      viewportFraction: 0.5,
      scale: 0.8,
    );
  }

  Widget listItem(final String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.centerLeft,
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(),
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}
