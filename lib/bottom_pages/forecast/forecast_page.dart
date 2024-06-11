import 'package:flutter/material.dart';
import 'package:weather_ui/bottom_pages/forecast/components/forecast_daily_widget.dart';
import 'package:weather_ui/bottom_pages/home/components/weather_container.dart';
import '../../constants/constants.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({super.key});

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text('Forecast Report',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 28,
              )),
        ),
      ),
      body: Container(
        color: appColor,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  WeatherContainer(color: Color.fromARGB(255, 35, 103, 238)),
                  WeatherContainer(color: Color.fromARGB(255, 32, 54, 98)),
                  WeatherContainer(color: Color.fromARGB(255, 32, 54, 98)),
                  WeatherContainer(color: Color.fromARGB(255, 32, 54, 98)),
                  WeatherContainer(color: Color.fromARGB(255, 32, 54, 98)),
                  WeatherContainer(color: Color.fromARGB(255, 32, 54, 98)),
                  WeatherContainer(color: Color.fromARGB(255, 32, 54, 98)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    'Next Forecast',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Icon(
                    Icons.calendar_month,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  ForecastDailyWidget(weekDay: 'Monday'),
                  ForecastDailyWidget(weekDay: 'Tuesday'),
                  ForecastDailyWidget(weekDay: 'Wednesday'),
                  ForecastDailyWidget(weekDay: 'Thursday'),
                  ForecastDailyWidget(weekDay: 'Friday'),
                  ForecastDailyWidget(weekDay: 'Saturday'),
                  ForecastDailyWidget(weekDay: 'Sunday'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

