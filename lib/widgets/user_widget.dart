import 'package:articles/data/models/user.dart';
import 'package:articles/pages/posts_page.dart';
import 'package:articles/utils/app_color.dart';
import 'package:articles/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key, 
    required this.user,
  }) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PostsPage(
                      user: user,
                    )));
      },
      child: Container(
        margin: EdgeInsets.all(5.w),
        padding: EdgeInsets.all(2.w),
        height: 15.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.darkPrimary, width: 0.8.w),
          borderRadius: BorderRadius.circular(3.w),
        ),
        child: Row(
          children: [
            Image.network(
              user.image,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    user.name,
                    style: AppTextStyles.text14White
                        .copyWith(color: AppColor.darkPrimary),
                  ),
                  Text(
                    'Posts count: ${user.countPosts}',
                    style: AppTextStyles.text14White
                        .copyWith(color: AppColor.darkPrimary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
