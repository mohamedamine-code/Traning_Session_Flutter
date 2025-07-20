import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Image.network('https://static.vecteezy.com/system/resources/previews/030/615/710/large_2x/azure-minimalist-wallpaper-free-photo.jpg',height: 990,fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, size: 35,color: Colors.white,),
                      Text("Weathermean", style: TextStyle(fontSize: 30,color: Colors.white)),
                      Icon(Icons.add, size: 35,color: Colors.white),
                    ],
                  ),
                  // SizedBox(height: 40),
                  Text("Harlem", style: TextStyle(fontSize: 70,color: Colors.white)),
                  Text(
                    "Mondy , Januray , 10 ,2025",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    
                  ),
                  SizedBox(height: 30),
                  Text("15°c", style: TextStyle(fontSize: 100,color: Colors.white)),
                  // SizedBox(height: 10,),
                  Text(
                    '----------',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    "Cloudy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "25°c/28°c",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Icon(Icons.delete, size: 30),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(WeatherIcons.day_rain),
                          Text('25°c/28°c',style: TextStyle(color: Colors.white),),
                          Text('Today',style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(WeatherIcons.day_rain),
                          Text('25°c/28°c',style: TextStyle(color: Colors.white)),
                          Text('Today',style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(WeatherIcons.day_rain),
                          Text('25°c/28°c',style: TextStyle(color: Colors.white)),
                          Text('Today',style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
