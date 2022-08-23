import 'package:articles/data/models/user.dart';

abstract class DataState {}

class DataLoadingState extends DataState {}

class DataErrorState extends DataState {}

class DataSuccessState extends DataState {
  DataSuccessState({
    required this.users,
  });
  final List<User> users;
}