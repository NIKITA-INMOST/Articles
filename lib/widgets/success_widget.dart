import 'package:articles/data/models/user.dart';
import 'package:articles/widgets/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SuccessStateWidget extends StatelessWidget{
  const SuccessStateWidget({Key? key, 
    required this.users
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: SingleChildScrollView(
        child: Column(
          children: usersList,
        ),),
    );
  }

  List<Widget> get usersList{
    return users.map((user) => UserWidget(user: user)).toList();
  } 
  
}
