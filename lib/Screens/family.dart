import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japaneasy/Screens/home.dart';

class FamilyPage extends StatelessWidget {
  final List<String> familyImage = [
    'assets/FamilyMembers/father.png',
    'assets/FamilyMembers/mother.png',
    'assets/FamilyMembers/grandFather.png',
    'assets/FamilyMembers/grandMother.png',
    'assets/FamilyMembers/daughter.png',
    'assets/FamilyMembers/son.png',
    'assets/FamilyMembers/olderBrother.png',
    'assets/FamilyMembers/olderSister.png',
    'assets/FamilyMembers/youngerSister.png',
    'assets/FamilyMembers/youngerBrother.png',
  ];

  final List<String> englishMembers = [
    'Father',
    'Mother',
    'grandfather',
    'grandmother',
    'Daughter',
    'Son',
    'Older Brother',
    'Older Sister',
    'Younger Sister',
    'Younger Brother',
  ];

  final List<String> japanesMembers = [
    'Chichioya',
    'Hahaoya',
    'Ojīsan',
    'Sobo',
    'Musume',
    'Musuko',
    'Nīsan',
    'Ane',
    'Imōto',
    'otōto',
  ];

  final List<String> soundMembers = [
    'sounds/family_members/father.wav',
    'sounds/family_members/mother.wav',
    'sounds/family_members/grandfather.wav',
    'sounds/family_members/grandmother.wav',
    'sounds/family_members/daughter.wav',
    'sounds/family_members/son.wav',
    'sounds/family_members/olderbother.wav',
    'sounds/family_members/oldersister.wav',
    'sounds/family_members/youngersister.wav',
    'sounds/family_members/youngerbrohter.wav',
  ];

  FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 224, 224),
      appBar: AppBar(
        title: const Text('FamilyMembers'),
        backgroundColor: const Color.fromARGB(255, 69, 119, 220),
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
        itemCount: familyImage.length,
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
                    player.play(AssetSource(soundMembers[index]));
                  },
                  child: Image.asset(
                    familyImage[index],
                    width: 100,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                englishMembers[index],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                japanesMembers[index],
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
