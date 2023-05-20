import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/footer.png'),
      )),
    );
  }
}
