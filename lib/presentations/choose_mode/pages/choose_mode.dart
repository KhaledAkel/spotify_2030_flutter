import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_2030_flutter/common/widgets/button/mode_button.dart';
import 'package:spotify_2030_flutter/common/widgets/button/basic_app_button.dart';

class ChooseModePage extends StatelessWidget {
  final Function(bool) onToggleTheme;

  const ChooseModePage({Key? key, required this.onToggleTheme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'), // Update with the correct path
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
                // Mode buttons
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
                            onToggleTheme(false); // Light mode
                          },
                        ),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        ModeButton(
                          image: AppVectors.darkModeIcon,
                          height: 80,
                          width: 80,
                          onPressed: () {
                            onToggleTheme(true); // Dark mode
                          },
                        ),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                BasicAppButton(
                  text: 'Continue',
                  onPressed: () {
                    // Navigate to the next page
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
