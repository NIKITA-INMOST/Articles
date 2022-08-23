import 'package:articles/data/models/user.dart';
import 'package:articles/utils/app_color.dart';
import 'package:articles/utils/text_styles.dart';
import 'package:articles/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PostsPage extends StatelessWidget {
  final User user;

  const PostsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text(
          user.name,
          style: AppTextStyles.text14White,
        ),
      ),
      body: SizedBox(
        height: 100.h,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                user.image,
              ),
              Column(
                children: postsWidget,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get postsWidget {
    return user.posts.map((post) => PostWidget(post: post)).toList();
  }
}

