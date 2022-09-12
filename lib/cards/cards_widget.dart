import 'package:flutter/material.dart';

class CardsWidget extends StatefulWidget {
  const CardsWidget({super.key});

  @override
  State<CardsWidget> createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 35, 97, 150),
            Color.fromARGB(255, 16, 150, 111),
          ],
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'EVOCABANK',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                Text(
                  'ArCa',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
