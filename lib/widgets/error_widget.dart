import 'package:articles/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.h),
      alignment: Alignment.center,
      child: Text(
        'OOOOPSSSSSS.....',
        style: AppTextStyles.title22White,
      ),
    );
  }
}
