import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japaneasy/Screens/home.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 224, 224),
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff94447C),
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
      body: ContainerCard(),
    );
  }
}

class ContainerCard extends StatelessWidget {
  ContainerCard({super.key});

  final List<String> englishPhrases = [
    'Don\'t forget to subescribe',
    'I love programming',
    'Programming us easy',
    'Where are you going?',
    'What\'s your name?',
    'I love anime',
    'How are you feeling?',
    'Are you coming?',
  ];

  final List<String> japanesePhrases = [
    'Kōdoku suru koto o wasurenaide kudasai.wav',
    'Puroguramingu ga daisuki.wav',
    'Puroguramingu wa kantandesu.wav',
    'Doko ni iku no.wav',
    'Anata no namae wa nandesuka.wav',
    'Watashi wa anime ga daisukidesu.wav',
    'Go kibun wa ikagadesu ka.wav',
    'Anata wa kite imasu.wav',
  ];

  final List<String> soundPhrases = [
    'sounds/phrases/dont_forget_to_subscribe.wav',
    'sounds/phrases/i_love_programming.wav',
    'sounds/phrases/programming_is_easy.wav',
    'sounds/phrases/where_are_you_going.wav',
    'sounds/phrases/what_is_your_name.wav',
    'sounds/phrases/i_love_anime.wav',
    'sounds/phrases/how_are_you_feeling.wav',
    'sounds/phrases/are_you_coming.wav',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        englishPhrases[index],
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff94447C),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        japanesePhrases[index],
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 133, 51, 109),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        final player = AudioPlayer();
                        player.play(AssetSource(soundPhrases[index]));
                      },
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Color(0xff94447C),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                  color: Color.fromARGB(255, 166, 113, 149),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
