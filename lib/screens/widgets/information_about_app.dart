import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class InformatiomAboutApp extends StatelessWidget {
  const InformatiomAboutApp({
    super.key,
    this.text,
    this.onTapFirst,
  });
  final String? text;
  final Function()? onTapFirst;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFirst,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [AppColors.pink, AppColors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Text(
            text ?? "",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


