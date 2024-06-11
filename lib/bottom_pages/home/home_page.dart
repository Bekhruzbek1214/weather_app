import 'package:flutter/material.dart';
import 'package:weather_ui/constants/constants.dart';

import 'components/weather_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text('San Francisco',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 28,
              )),
        ),
      ),
      body:  Column(
        children: <Widget>[
          SizedBox(height: 20), // Adjust this to position the text vertically
          const Center(
            child: Text(
              "May 28, 2024",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(6),
                elevation: 4,
                child: Container(
                  margin: const EdgeInsets.all(10.0), // Margin of 10.0 on all sides
                  child: const Padding(
                    padding: EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8), // Padding of 8.0 on all sides
                    child: Text(
                      'Forecast',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(6),
                elevation: 4,
                color: Colors.blueGrey,
                child: Container(
                  margin: const EdgeInsets.all(10.0), // Margin of 10.0 on all sides
                  child: const Padding(
                    padding: EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8), // Padding of 8.0 on all sides
                    child: Text(
                      'Air quality',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
           const SizedBox(height: 30,),
           Image.asset('assets/party_cloudly.png'),
          const SizedBox(height: 20,),
           Material(
             color: appColor,
             child: const Row(
               mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text('Temp', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),),
                     Text('32°', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold), ),
                   ],
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text('Wind', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),),
                     Text('10km/h', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                   ],
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text('Humidity', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),),
                     Text('75%', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),

                   ],
                 )

               ],
             ),
           ),
           const SizedBox(height: 20,),
            Material(
             color: const Color.fromARGB(255, 5, 50, 131),
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                 Container(
                    margin: const EdgeInsets.only(left: 10),
                    child:  const Text('Today',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white,
                        fontSize: 18,),
                    ),

                ),
                const Spacer(),
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Text('View full report',
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.blue,
                          fontSize: 18),)

                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 2, right: 2),
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                WeatherContainer(color:  Color.fromARGB(255, 35, 103, 238)),
                WeatherContainer(color:  Color.fromARGB(255, 32, 54, 98), image: 'assets/rainy_bg.png', hour: '15:00',temp: '10',),
                WeatherContainer(color:  Color.fromARGB(255, 32, 54, 98)),
                WeatherContainer(color:  Color.fromARGB(255, 32, 54, 98)),
                WeatherContainer(color:  Color.fromARGB(255, 32, 54, 98)),
                WeatherContainer(color:  Color.fromARGB(255, 32, 54, 98)),
                WeatherContainer(color:  Color.fromARGB(255, 32, 54, 98)),
              ],
            ),
          ),

          
          

        ],
      ),
    );
  }
}


