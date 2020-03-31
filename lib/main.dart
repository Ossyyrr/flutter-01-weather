import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Container(
          child: Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.cloud),
                    SizedBox(width: 8.0),
                    Text("El tiempo"),
                  ],
                ),
              ),
              body: HomePage())),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[header(), list()],
    );
  }

  Widget header() {
    return Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          width: double.infinity,
          child: Image.network(
              "https://www.lavanguardia.com/r/GODO/LV/p6/WebSite/2019/06/13/Recortada/img_mbigas_20190613-121711_imagenes_lv_terceros_madrid-309-kVCI-U462850729482pJG-992x558@LaVanguardia-Web.jpg",
              fit: BoxFit.cover),
        ),
        Container(height: 100.0, width: double.infinity, color: Colors.white30),
        Positioned(
            left: 16.0,
            top: 16.0,
            child: Text(
              "Madrid",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )),
        Positioned(
          left: 16.0,
          bottom: 16.0,
          child: Text("32ºC",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              )),
        )
      ],
    );
  }

  Widget list() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: dayWidget("Lunes", Icons.wb_sunny, "32ºC"),
          ),
          ListTile(
            title: dayWidget("Miércoles", Icons.wb_iridescent, "19ºC"),
          ),
          ListTile(
            title: dayWidget("Martes", Icons.wb_cloudy, "30ºC"),
          ),
          ListTile(
            title: dayWidget("Jueves", Icons.wb_sunny, "22ºC"),
          ),
          ListTile(
            title: dayWidget("Viernes", Icons.wb_sunny, "22ºC"),
          ),
        ],
      ),
    );
  }

  Widget dayWidget(String day, IconData iconData, String temp) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(day),
          Icon(iconData),
          Text(temp),
        ],
      ),
    ));
  }
}
