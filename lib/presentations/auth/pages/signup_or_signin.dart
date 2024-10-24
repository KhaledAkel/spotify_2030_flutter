import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_2030_flutter/common/widgets/button/basic_app_button.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_images.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Add SafeArea here
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                AppVectors.pattern1,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                AppVectors.pattern2,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Transform.translate(
                offset: const Offset(
                    -20.0, 0.0), // Moves image slightly to the left
                child: SizedBox(
                  child: Image.asset(
                    AppImages.authCover1,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppVectors.logo,
                      width: 280,
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Enjoy Listening to Music',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                            text: 'Register',
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {}, // Define your sign-in action here
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20), // Adjust padding for height
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    30), // Optional border
                              ),
                              overlayColor: Colors.transparent,
                            ),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color ??
                                    Colors.black, // Safely access color
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
