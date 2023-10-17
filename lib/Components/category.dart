import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.title,
    required this.cardColor,
    required this.textColor,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final Color cardColor;
  final Color textColor;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          shadowColor: Colors.black,
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 23,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MontserratLight',
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                imagePath,
                width: double.infinity,
                height: 190,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
