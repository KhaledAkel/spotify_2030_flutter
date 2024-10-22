import 'package:flutter/material.dart ';
import 'package:spotify_2030_flutter/core/configs/assets/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_vectors.dart ';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.cover),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  AppVectors.logo,
                ),
              ),
              const Spacer(),
              const Text(
                'Enjoy Listening to music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 21),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ])),
        Container(
          color: Colors.black.withOpacity(0.15),
        )
      ],
    ));
  }
}
