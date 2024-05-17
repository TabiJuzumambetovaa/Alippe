import 'package:flutter/material.dart';
import 'package:flutter_alippe_pro/screens/first_screen.dart';
import 'package:gap/gap.dart';

import 'info_detail_screen.dart';
import 'theme/app_colors.dart';
import 'widgets/information_about_app.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texts = ['Alippe Ai деген эмне?', 'Alippe Ai куралдары', 'Бөлүшүү'];
    final List<Function()> onTapActions = [
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FirstScreen(),
          ),
        );
      },
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoDetailScreen(
              text: texts[1],
            ),
          ),
        );
      },
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FirstScreen(),
          ),
        );
      },
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          children: [
            const Gap(121),
            const Text(
              'Alippe Ai',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.strongBlue),
            ),
            const Gap(23),
            const Text(
              'Мугалимдин зарыл жардамчысы',
              style: TextStyle(
                  color: AppColors.strongBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            const Gap(43),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) => InformatiomAboutApp(
                    text: texts[index], onTapFirst: onTapActions[index]),
                separatorBuilder: (context, index) => const Gap(58),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
