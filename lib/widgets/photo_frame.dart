import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../controllers/url_launcher.dart';


class PhotoFrame extends StatelessWidget {
  final String photo;
  final Map<String, String> socials;
  final String name;
  const PhotoFrame(
      {super.key,
      required this.socials,
      required this.photo,
      required this.name,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white,
          width: 1.12,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1.12,
              ),
            ),
            child: Image.network(
              photo,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    LinearProgressIndicator(
                      color: Color.fromRGBO(9, 139, 14, 1),
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Loading you ! ',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                );
              },
              errorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/placeholder_dp.png',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                
                onTap: () async {
                  await launchUrl(socials['github'] ?? '');
                },
                splashColor: Colors.grey,
                child: SvgPicture.asset(
                  'assets/github.svg',
                  height: 16,
                ),
              ),
              InkWell(
                onTap: () async {
                  await launchUrl(socials['instagram'] ?? '');
                },
                splashColor: Colors.grey,
                child: SvgPicture.asset('assets/instagram.svg',
                  height: 16,
                ),
              ),
              InkWell(
                onTap: () async {
                  await launchUrl(socials['linkedin'] ?? '');
                },
                splashColor: Colors.grey,
                child: SvgPicture.asset(
                  'assets/linkedin.svg',
                  height: 16,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
