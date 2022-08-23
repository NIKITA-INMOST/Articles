import 'package:articles/data/models/post.dart';
import 'package:articles/utils/app_color.dart';
import 'package:articles/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.8.w,
        ),
        borderRadius: BorderRadius.circular(3.w),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(2.w, 2.w, 2.w, 10.w),
            child: Text(
              post.title,
              style: AppTextStyles.text12Black
                  .copyWith(color: AppColor.darkPrimary),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            post.body,
            style: AppTextStyles.text12Black.copyWith(color: AppColor.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
