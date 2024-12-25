# first_flutter_project

This project represents a simple flutter app. It utilizes a Stateless Widget that displays two
images and customized text while keeping the code easy to read .

### Requirement 1: Creating the Flutter Project

**Title:** Create Flutter Project

**Description:** Create a Flutter project using the command line and name it "
first\_flutter\_project". Document the commands used.

**Commands Used:**

- Using this command line to create a new Flutter project named first_flutter_project

```bash
flutter create first_flutter_project
```

- Using this command line to navigate to the project directory

```bash
cd first_flutter_project
```

- Using this command line to check flutter version in system

```bash
flutter --version
```

## Project Overview

This project shows how to develop a stateless Flutter widget. It contains the following features:

* Two images displayed using `Image.asset`.
* Customized text describing Flutter.
* Basic layout using `Column`, `Padding`, and `SizedBox`.
* App bar with a title.

## Code Structure

The project structure is as follows:

```
first_flutter_project/
├── android/
├── ios/
├── lib/
│   └── main.dart       # Main application entry point
│   └── flutter_project.dart # Contains the FlutterProject widget
├── pubspec.yaml
└── ...
```

**main.dart**

- This file contains the **main()** function, which runs the application, and the MyApp widget,
  which sets up the MaterialApp and defines the home screen as the FlutterProject widget.

```dart
import 'package:first_flutter_project/flutter_project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const FlutterProject(),
    );
  }
}
```

**flutter_project.dart**

- This file contains the **FlutterProject** stateless widget, which builds the UI with the images
  and text.

```dart
import 'package:flutter/material.dart';

class FlutterProject extends StatelessWidget {
  const FlutterProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Flutter Project",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
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
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.25,
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/logo.jpg',
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.3,
            ),
            const SizedBox(height: 10),
            const Text(
              "Flutter is an open-source framework by Google that enables developers to build high-performance, cross-platform applications using Dart.\nIt’s fast, and perfect for creating custom UI designs.\n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Assets

Make sure to include the images (Mark.jpg and logo.jpg) in the **assets/images** directory and
declare them in the **pubspec.yaml** file:

```YAML
flutter:
  assets:
    - assets/images/Mark.jpg
    - assets/images/logo.jpg
```

## Running the App

To run the app, use the following command in the project directory:

```bash
flutter run
```