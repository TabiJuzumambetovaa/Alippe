import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../home/info_detail_screen.dart';
import '../theme/app_colors.dart';
import '../widgets/download_detail_widget.dart';
import '../widgets/download_widget.dart';
import '../widgets/presentation_edit_add_delete.dart';

class PresentationIsReadyScreen extends StatefulWidget {
  const PresentationIsReadyScreen({super.key});

  @override
  _PresentationIsReadyScreenState createState() =>
      _PresentationIsReadyScreenState();
}

class _PresentationIsReadyScreenState extends State<PresentationIsReadyScreen> {
  bool dowloadButton = false;

  @override
  Widget build(BuildContext context) {
    final imageIndex = [1, 2, 3];
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const IconAndTextWidget(
                icon: Icons.video_label_outlined,
                text: 'Презентация даяр',
              ),
              const Gap(40),
              ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) => PresentationsEditAddDelete(
                  image: 'assets/png/pres${imageIndex[index]}.png',
                ),
                separatorBuilder: (context, index) => const Gap(10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
              const Gap(30),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: AppColors.strongBlue,
                        )),
                    shadowColor: Colors.black.withOpacity(0.7),
                    elevation: 8,
                  ),
                  onPressed: () {},
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        dowloadButton = !dowloadButton;
                      });
                    },
                    child: const DownloadWidget(),
                  ),
                ),
              ),
              const Gap(10),
              if (dowloadButton) const DownloadDetailWidget(),
              const Gap(100),
            ],
          ),
        ),
      ),
    );
  }
}
