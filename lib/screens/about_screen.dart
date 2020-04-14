import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "About",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                  "This application was developed to inform people about COVID-19 on around the world, it's a free application. Please be careful and stay at home, if it's possible, thank you.",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  Text(
                      "Data provided by"),
                  InkWell(
                    child: Text("https://www.worldometers.info", style: TextStyle(color: Colors.blue,fontSize: 16),),
                    onTap: () async {
                      if (await canLaunch("https://www.worldometers.info")) {
                        await launch("https://www.worldometers.info");
                      }
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  Text(
                      "API Service developed by"),
                  InkWell(
                    child: Text("Javier Aviles", style: TextStyle(color: Colors.blue,fontSize: 16),),
                    onTap: () async {
                      if (await canLaunch("https://github.com/javieraviles/covidAPI")) {
                        await launch("https://github.com/javieraviles/covidAPI");
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
