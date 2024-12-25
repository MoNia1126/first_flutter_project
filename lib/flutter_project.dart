import 'package:flutter/material.dart';

class FlutterProject extends StatelessWidget {
  const FlutterProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Flutter Project",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/Mark.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/logo.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            SizedBox(height: 10),
            const Text(
              "Flutter is an open-source framework by Google that enables developers to build high-performance,"
              "cross-platform applications using Dart.\n"
              "It’s fast, and perfect for creating custom UI designs.\n",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.lightBlue),
            )
          ],
        ),
      ),
    );
  }
}
