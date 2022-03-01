import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:async';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hand sign translator',
      home: Scaffold(
        body: const CameraApp(),
        appBar: AppBar(
          backgroundColor: const Color(0xFFE94560),
          leading: Builder(builder: (BuildContext context) {
            return const IconButton(
                onPressed: null,
                icon: Icon(Icons.menu, color: Color(0xFF0F3460)));
          }),
        ),
      ),
    );
  }
}

class CameraApp extends StatefulWidget {
  const CameraApp({Key? key}) : super(key: key);

  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller =
      CameraController(cameras[0], ResolutionPreset.max);

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Container(
      child: CameraPreview(controller),
    );
  }
}
