import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          Readbox(
            "SEE Result",
            "https://www.google.com/",
          ),
          Readbox(
            "SEE Result",
            "https://www.google.com/",
          ),
          Readbox(
            "SEE Result",
            "https://www.google.com/",
          ),
          Readbox(
            "SEE Result",
            "https://www.google.com/",
          ),
          Readbox(
            "SEE Result",
            "https://www.google.com/",
          ),
        ],
      ),
    );
  }
}

class Readbox extends StatelessWidget {
  final String title;
  final String url;
  const Readbox(this.title, this.url, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
      ),
      onTap: () {
        // ignore: deprecated_member_use
        launch(url);
      },
    );
  }
}
