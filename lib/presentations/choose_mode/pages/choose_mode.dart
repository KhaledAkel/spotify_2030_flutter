import 'package:flutter/material.dart ';
import 'package:spotify_2030_flutter/common/widgets/button/basic_app_button.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_vectors.dart ';
import 'package:spotify_2030_flutter/common/widgets/button/mode_button.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.cover2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Semi-transparent overlay
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            color: Colors.black.withOpacity(0.15),
            child: Column(
              children: [
                // Logo at the top
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                // Mode buttons in a row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ModeButton(
                          image: AppVectors.lightModeIcon,
                          height: 80,
                          width: 80,
                          onPressed: () {
                            // Handle light mode action
                          },
                        ),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(width: 20), // Space between the buttons
                    Column(
                      children: [
                        ModeButton(
                          image: AppVectors.darkModeIcon,
                          height: 80,
                          width: 80,
                          onPressed: () {
                            // Handle dark mode action
                          },
                        ),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Space between row and button
                // Continue button
                BasicAppButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Container(), // Go to another page
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
