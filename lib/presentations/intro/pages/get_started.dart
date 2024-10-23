import 'package:flutter/material.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_images.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_vectors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_2030_flutter/presentations/choose_mode/pages/choose_mode.dart';
import 'package:spotify_2030_flutter/common/widgets/button/basic_app_button.dart';

class GetStartedPage extends StatelessWidget {
  final Function(bool) onToggleTheme;

  const GetStartedPage({Key? key, required this.onToggleTheme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.cover),
                fit: BoxFit.cover,
              ),
            ),
          ),
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
                  'Enjoy Listening to Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 21),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus.',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                BasicAppButton(
                  text: 'Get Started',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ChooseModePage(onToggleTheme: onToggleTheme),
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
