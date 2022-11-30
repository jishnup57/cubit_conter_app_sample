import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_cubit/Models/SceenWiseModels/home_screen_cubit_model.dart';

class HomeCubit extends Cubit<HomeCubitModel>{
  HomeCubit():super(HomeCubitModel());
  void changeCount(){
    emit(state.copyWith(count: state.count+1));
  }
  void changeCurrentPassVisibility(){
    bool newState = !state.currentPassVisibility;
    emit(state.copyWith(currentPassVisibility: newState));
  }

}