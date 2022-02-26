import 'package:flutter/material.dart';

//https://docs.flutter.dev/development/ui/widgets/material
//flatter implements runApp and exspose it
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Hand sign translator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hand sign translator'),
        ),
        //uses own implemented class
        body: const Video()
      ),
    );
  }
}

//StatelessWidget = static widget at runtime
class Video extends StatelessWidget {
  const Video({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const <Widget>[
          Expanded(child: Text('hello',textAlign: TextAlign.center,)),
          Expanded(child: Text('valami',textAlign: TextAlign.center,))
          ],
      ),
    );
  }
}