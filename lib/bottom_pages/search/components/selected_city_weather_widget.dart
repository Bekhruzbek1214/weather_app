import 'package:flutter/material.dart';

class SelectedCityWeatherWidget extends StatelessWidget {

  final String city;
  final String temp;
  final String weather;
  final String image;


  const SelectedCityWeatherWidget({
    super.key,
    this.city = 'California',
    this.temp = '32',
    this.weather = 'Cloudy',
    this.image = 'assets/rainy_bg.png'

  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(temp, style: const TextStyle(fontSize: 18),),
                    Text(weather, style: const TextStyle(fontSize: 18))
                  ],
                ),
              ), 
              SizedBox(
                height: 120,
                width: 100,
                child: Image.asset(image),
              )
            ],
          ),
          Text(city, style: const TextStyle(fontSize: 24),)
        ],
      ),
    );
  }
}
