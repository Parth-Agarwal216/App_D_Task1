import 'package:flutter/material.dart';
import 'package:itsme/widgets/about_me.dart';
import 'package:itsme/widgets/footer.dart';
import 'package:itsme/widgets/nav_bar.dart';
import 'package:itsme/widgets/photo_frame.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavBar(),
              Container(
                transform: Matrix4.translationValues(0, -50, 0),
                child: const Column(
                  children: [
                    PhotoFrame(
                      socials: {
                        'linkedin': 'https://linkedin.com',
                        'github': 'https://github.com',
                        'instagram': 'https://instagram.com'
                      },
                      photo: 'https://xsgames.co/randomusers/avatar.php?g=male',
                      name: 'Coding Elite',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Priyanshu\nSrivastava',
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0, -30, 0),
                child: const Row(
                  children: [
                    Spacer(),
                    AboutMe(),
                  ],
                ),
              ),
              const Spacer(),
              const Footer(),

             const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
