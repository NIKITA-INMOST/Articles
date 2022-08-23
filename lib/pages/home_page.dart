import 'package:articles/bloc/data_bloc.dart';
import 'package:articles/bloc/data_state.dart';
import 'package:articles/utils/app_color.dart';
import 'package:articles/widgets/error_widget.dart';
import 'package:articles/widgets/loading_widget.dart';
import 'package:articles/widgets/success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
      ),
      body: BlocBuilder<DataBloc, DataState>(
        builder: (context, state) {
          if (state is DataLoadingState) {
            return const LoadingWidget();
          } else if (state is DataSuccessState) {
            return SuccessStateWidget(
              users: state.users,
            );
          } else if (state is DataErrorState) {
            return const AppErrorWidget();
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}



