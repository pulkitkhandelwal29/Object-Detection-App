import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import './MySplashPage.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Object Detection App',
      home: MySplashPage(),
    );
  }
}
