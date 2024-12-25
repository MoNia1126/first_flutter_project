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
        backgroundColor: Colors.lightBlue, // Background color of the appbar
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/Mark.jpg', // Path to the image asset
              width: MediaQuery.of(context).size.width, // Full width of the screen
              height: MediaQuery.of(context).size.height * 0.25,  // 25% of screen height
            ),
            SizedBox(height: 10), // Spacer to add vertical space
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
