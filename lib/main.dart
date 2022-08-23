import 'package:articles/bloc/data_bloc.dart';
import 'package:articles/bloc/data_event.dart';
import 'package:articles/pages/home_page.dart';
import 'package:articles/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => DataBloc()..add(DataEvent.getUsers),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Articles',
          theme: ThemeData(primarySwatch: AppColor.primaryWatch),
          home: const HomePage(),
        ),
      ),
    );
  }
}