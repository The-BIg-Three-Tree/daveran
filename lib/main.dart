import 'package:flutter/material.dart';

//https://docs.flutter.dev/development/ui/widgets/material
//flatter implements runApp and exspose it
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hand sign translator',
      home: Scaffold(
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
