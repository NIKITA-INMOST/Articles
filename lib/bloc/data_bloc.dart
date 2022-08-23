import 'package:articles/bloc/data_event.dart';
import 'package:articles/bloc/data_state.dart';
import 'package:articles/data/models/user.dart';
import 'package:articles/data/repositories/data_repository.dart';
import 'package:bloc/bloc.dart';


class DataBloc extends Bloc<DataEvent, DataState>{
  DataBloc() : super(DataLoadingState()){
    on((event, emit) async {
      emit(DataLoadingState());
      try{
        final  List<User> users = await DataRepository().getUsers();
        emit(DataSuccessState(users: users));
      } catch(_){
        emit(DataErrorState());
      }
    });
  }
}

