import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class DownloadWidget extends StatelessWidget {
  const DownloadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Көчүрүү',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.strongBlue,
          ),
        ),
        Spacer(),
        Icon(Icons.keyboard_arrow_down,
            color: AppColors.strongBlue),
      ],
    );
  }
}