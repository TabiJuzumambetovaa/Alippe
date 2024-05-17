import 'package:flutter/material.dart';
import 'package:flutter_alippe_pro/screens/theme/app_colors.dart';
import 'package:gap/gap.dart';

import 'widgets/information_about_app.dart';

class InfoDetailScreen extends StatelessWidget {
  const InfoDetailScreen({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            InformatiomAboutApp(
              text: text,
            ),
            const Gap(48),
            const IconAndTextWidget(
              icon: Icons.calendar_month,
              text: 'Сабактын планын түзүү',
            ),
            const Gap(40),
            const IconAndTextWidget(
              icon: Icons.video_label_outlined,
              text: 'Презентация жасоо',
            ),
            const Gap(40),
            const IconAndTextWidget(
              icon: Icons.circle,
              text: 'Анимация жасоо',
            ),
            const Gap(40),
            const IconAndTextWidget(
              icon: Icons.square,
              text: 'Оюн түзүү',
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    super.key,
    this.text,
    this.icon,
  });
  final String? text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(10, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 44,
            color: AppColors.pink,
          ),
          Text(
            text ?? '',
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.strongBlue),
          ),
        ],
      ),
    );
  }
}
