import 'package:flutter/material.dart ';
import 'package:spotify_2030_flutter/core/configs/assets/app_images.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.cover),
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    ));
  }
}
