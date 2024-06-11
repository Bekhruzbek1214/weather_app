import 'package:flutter/material.dart';

class ForecastDailyWidget extends StatelessWidget {
  final String weekDay;
  final String date;
  final String temp;
  final String image;
  
  const ForecastDailyWidget({
    this.image = 'assets/party_cloudly.png',
    this.weekDay = 'Friday',
    this.date = 'May 28',
    this.temp = '32°C',
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 47, 77, 136),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            child:  Column(
              children: [
                Text(weekDay, textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 18),),
                Text(date, textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 18),)
              ],
            ),
          ),
           Text(temp, style: TextStyle(fontSize: 28, color: Colors.white),),
          SizedBox(
              height: 120,
              width: 100,
              child: Image.asset(image))
        ],
      ),
    );
  }
}

