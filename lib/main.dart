import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                expandedColorButtons(Colors.blue, 'note1.wav'),
                expandedColorButtons(Colors.deepPurple, 'note2.wav'),
                expandedColorButtons(Colors.grey, 'note3.wav'),
                expandedColorButtons(Colors.blueGrey, 'note4.wav'),
                expandedColorButtons(Colors.brown, 'note5.wav'),
                expandedColorButtons(Colors.orange, 'note6.wav'),
                expandedColorButtons(Colors.amberAccent, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }

  Widget expandedColorButtons(Color c,String a)
  {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: c
        ),
        onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource(a));
          Fluttertoast.showToast(
              msg: "Button is clicked",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        },
        child: Container(
          width: double.infinity,
        ),
      ),
    );
  }
}
