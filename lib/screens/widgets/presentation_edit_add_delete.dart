import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_colors.dart';

class PresentationsEditAddDelete extends StatefulWidget {
  const PresentationsEditAddDelete({
    super.key,
    this.onTapEdit,
    this.onTapAdd,
    this.onTapDelete,
    required this.image,
  });
  final String image;
  final Function()? onTapEdit;
  final Function()? onTapAdd;
  final Function()? onTapDelete;

  @override
  State<PresentationsEditAddDelete> createState() =>
      _PresentationsEditAddDeleteState();
}

class _PresentationsEditAddDeleteState
    extends State<PresentationsEditAddDelete> {
  bool isTextVisible = false;
  bool deleteButton = false;
  bool isEditButtonPressed = false;
  bool isAddButtonPressed = false;
  bool isDeleteButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          widget.image,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isEditButtonPressed = !isEditButtonPressed;
                });
              },
              icon: Icon(
                Icons.edit_rounded,
                color: isEditButtonPressed ? AppColors.blue : AppColors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isAddButtonPressed = !isAddButtonPressed;
                  isTextVisible = !isTextVisible;
                });
              },
              icon: Icon(
                Icons.add,
                color: isAddButtonPressed ? AppColors.blue : AppColors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isDeleteButtonPressed = !isDeleteButtonPressed;
                  deleteButton = !deleteButton;
                });
              },
              icon: Icon(
                Icons.delete_outline_sharp,
                color: isDeleteButtonPressed ? AppColors.blue : AppColors.black,
              ),
            ),
          ],
        ),
        if (isTextVisible)
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                width: 90,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: AppColors.blue,
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const Gap(10),
            ),
          ),
        if (deleteButton)
          Align(
            alignment: const Alignment(0.5, 0),
            child: SizedBox(
              width: 100,
              height: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadowColor: Colors.black.withOpacity(0.7),
                  elevation: 8,
                ),
                onPressed: () {},
                child: const Text(
                  'Өчүрүү',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
