// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

/// Sound package
// import 'package:audioplayers/src/audio_cache.dart';

/// Plays sound as button is pressed

/// Packages
/// https://pub.dev/packages?q=is%3Aflutter-favorite
/// https://github.com/bluefireteam/audioplayers/blob/main/packages/audioplayers/doc/audio_cache.md
/// Build a function
///   3 types:
///     Void
///     input function
///     output function >> insted of 'void' use the output of datatype like 'int',
///           double(0.00), and use 'return' in the end of the function or in front the output.
/// Customize it https://freesound.org/

void main() {
  runApp(const Xelophone());
}

class Xelophone extends StatelessWidget {
  const Xelophone({Key? key}) : super(key: key);

  void playsound(int number) {
    /// it fetches sounds form the assets folder and plays
    /// the sound of given number
    //Function use {} to trigger the functionality
    AudioCache player = AudioCache(prefix: 'assets/');
    player.play('note$number.wav');
  }

  Expanded buildkey({required Color colr, required int number}) {
    /// it's the button that is
    /// pressed in the screen and plays the sound taking the color and button number for sound
    /// it's used in seven different places so we made a function out of it with arguments
    // Output function with arguments
    return Expanded(
      child: FlatButton(
        color: colr,
        onPressed: () {
          // final player = AudioCache();
          // player.play('assets/note1.wav');
          playsound(number);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    // final player = AudioCache();
                    // player.play('assets/note1.wav');
                    playsound(1);
                  },
                  child: Text(""),
                ),
              ),
              buildkey(colr: Colors.orange, number: 2),
              buildkey(colr: Colors.yellow, number: 3),
              buildkey(colr: Colors.green, number: 4),
              buildkey(colr: Colors.blue, number: 5),
              buildkey(colr: Colors.purple, number: 6),
              buildkey(colr: Colors.pink, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// // import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// void main() => runApp(XylophoneApp());
//
// class XylophoneApp extends StatelessWidget {
//   void playSound(int soundNumber) {
//     final player = AudioCache();
//     player.play('note$soundNumber.wav');
//   }
//
//   Expanded buildKey({required Color color, required int soundNumber}) {
//     return Expanded(
//       child: FlatButton(
//         color: color,
//         onPressed: () {
//           playSound(soundNumber);
//         }, child: Text(""),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               buildKey(color: Colors.red, soundNumber: 1),
//               buildKey(color: Colors.orange, soundNumber: 2),
//               buildKey(color: Colors.yellow, soundNumber: 3),
//               buildKey(color: Colors.green, soundNumber: 4),
//               buildKey(color: Colors.teal, soundNumber: 5),
//               buildKey(color: Colors.blue, soundNumber: 6),
//               buildKey(color: Colors.purple, soundNumber: 7),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
