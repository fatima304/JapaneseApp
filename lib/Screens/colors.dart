import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japaneasy/Screens/home.dart';

class ColorsPage extends StatelessWidget {
  final List<String> colorImage = [
    'assets/Colors/black.png',
    'assets/Colors/brown.png',
    'assets/Colors/dusty_yellow.png',
    'assets/Colors/gray.png',
    'assets/Colors/green.png',
    'assets/Colors/red.png',
    'assets/Colors/white.png',
    'assets/Colors/yellow.png'
  ];

  final List<String> englishColors = [
    'Black',
    'Brown',
    'Dusty Yellow',
    'Gray',
    'Green',
    'Red',
    'White',
    'Yellow',
  ];

  final List<String> japanesColors = [
    'Burakku',
    'Chairoi',
    'Hokori ppoi kiiro',
    'Gurē',
    'Midori',
    'Akai',
    'shiroi',
    'Kiiroi',
  ];

  final List<String> soundColors = [
    'sounds/colors/black.wav',
    'sounds/colors/brown.wav',
    'sounds/colors/dusty.wav',
    'sounds/colors/gray.wav',
    'sounds/colors/green.wav',
    'sounds/colors/red.wav',
    'sounds/colors/white.wav',
    'sounds/colors/yellow.wav',
  ];

  ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 224, 224),
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color.fromARGB(255, 194, 37, 113),
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_outlined),
          iconSize: 30,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
      ),
      body: GridView.builder(
        itemCount: colorImage.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(soundColors[index]));
                  },
                  child: Image.asset(
                    colorImage[index],
                    width: 100,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                englishColors[index],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                japanesColors[index],
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
