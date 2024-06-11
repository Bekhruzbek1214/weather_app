import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'components/selected_city_weather_widget.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text('Pick location',
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
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20, top: 30, bottom: 20),
                child: const Text('Find the area or the city that you want to know the detailed weather info at this time'
                , style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),)
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white24,
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,  // Two items per row
                  childAspectRatio: 1.0,  // Aspect ratio to ensure each item is square
                  mainAxisSpacing: 10.0,  // Spacing between rows
                  crossAxisSpacing: 10.0,  // Spacing between columns
                ),
                padding: const EdgeInsets.all(10),
                itemCount: 4,  // Replace with the actual number of items
                itemBuilder: (context, index) {
                  return const SelectedCityWeatherWidget();
                },
              ),
            ),

          ],
        ),
      ),

    );

    }
}
