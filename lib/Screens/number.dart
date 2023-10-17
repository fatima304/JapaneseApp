import 'package:flutter/material.dart';
import 'package:japaneasy/Screens/home.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberPage extends StatelessWidget {
  final List<String> numberImage = [
    'assets/Numbers/1.png',
    'assets/Numbers/Num2.png',
    'assets/Numbers/Num3.png',
    'assets/Numbers/4.png',
    'assets/Numbers/5.png',
    'assets/Numbers/Num6.png',
    'assets/Numbers/Num7.png',
    'assets/Numbers/8.png',
    'assets/Numbers/9.png',
    'assets/Numbers/Num0.png',
  ];

  final List<String> japanesNumbers = [
    'ichi',
    'Ni',
    'San',
    'Shi',
    'Go',
    'Roku',
    'Sebun',
    'hachi',
    'Kyū',
    'Jū',
  ];

  final List<String> englishNumbers = [
    'One',
    'Two',
    'three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
  ];

  final List<String> soundNumbers = [
    'sounds/numbers/1.mp3',
    'sounds/numbers/2.mp3',
    'sounds/numbers/3.mp3',
    'sounds/numbers/4.mp3',
    'sounds/numbers/5.mp3',
    'sounds/numbers/6.mp3',
    'sounds/numbers/7.mp3',
    'sounds/numbers/8.mp3',
    'sounds/numbers/9.mp3',
    'sounds/numbers/10.mp3',
  ];

  NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 224, 224),
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color.fromARGB(255, 45, 157, 83),
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_outlined),
          iconSize: 30,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomePage();
            }));
          },
        ),
      ),
      body: GridView.builder(
        itemCount: numberImage.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(soundNumbers[index]));
                },
                child: Image.asset(
                  numberImage[index],
                  width: 100,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                englishNumbers[index],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                japanesNumbers[index],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
    );
  }
}
