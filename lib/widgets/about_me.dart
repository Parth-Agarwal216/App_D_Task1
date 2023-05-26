import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'About Me',
          maxLines: 2,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          width: 300,
          decoration:
              BoxDecoration(border: Border.all(width: 2, color: Colors.white)),
          child: const Text(
            'Ahoy! Parth Agarwal here. I wonder if just this much would count as creative?',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}