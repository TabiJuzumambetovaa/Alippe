import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class DownloadDetailWidget extends StatelessWidget {
  const DownloadDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(8, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              child: const Text(
                'Ms Power Point',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: AppColors.strongBlue),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: TextButton(
              child: const Text(
                'PDF',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: AppColors.strongBlue),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
