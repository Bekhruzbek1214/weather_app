import 'package:flutter/material.dart';

class WeatherContainer extends StatelessWidget {
  final Color color;
  final String image;
  final String hour;
  final String temp;

  const WeatherContainer({
    super.key,
    this.color = const Color.fromARGB(255, 5, 50, 131),
    this.image = 'assets/party_cloudly.png',
    this.hour = '14:00',
    this.temp = '32°',
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(left: 4,),
        decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: color

        ),
        width: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(image),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(hour, style: const TextStyle(fontSize: 18, color: Colors.white),),
                Text(temp, style: const TextStyle(fontSize: 18, color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

