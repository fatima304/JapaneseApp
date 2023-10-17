import 'package:flutter/material.dart';
import 'package:japaneasy/Components/category.dart';
import 'package:japaneasy/Screens/colors.dart';
import 'package:japaneasy/Screens/family.dart';
import 'package:japaneasy/Screens/number.dart';
import 'package:japaneasy/Screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(1, 1),
                  colors: [
                Color(0xFFfffaef),
                Color(0xFFF6D5C4),
                Color(0xFFFFC37B),
                Color(0xFFFEE2D4),
              ])),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "Japanese japaneasy",
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontSize: 28,
                          fontFamily: 'MontserratBold',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 30),
                    child: Text(
                      "Learn Japanese basics effortlessly and enjoyably, making japaneasy learning a fun adventure",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey[400],
                          fontFamily: 'MontserratRegular',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FamilyPage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        title: " ",
                        cardColor: Color(0xFFFFC37B),
                        textColor: Colors.white,
                        imagePath: 'assets/family.png',
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NumberPage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        title: " ",
                        cardColor: Color(0xFFF6D5C4),
                        textColor: Color(0xffE97D7B),
                        imagePath: 'assets/numbers.jpg',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ColorsPage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        title: " ",
                        cardColor: Color(0xFFFEE2D4),
                        textColor: Colors.white,
                        imagePath: 'assets/color.jpeg',
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PhrasesPage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        title: " ",
                        cardColor: Color(0xffffc37a),
                        textColor: Colors.blueGrey,
                        imagePath: 'assets/phrase.png',
                      ),
                    ),
                  ),
                ],
              ),
              // ... rest of your code
            ],
          ),
        ),
      ),
    );
  }
}
