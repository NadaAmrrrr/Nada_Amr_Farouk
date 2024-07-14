import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radiobuttons_state.dart';

class RadioCubit extends Cubit<int> {
  RadioCubit() : super(0);

  void selectRadio(int index) {
    emit(index);
  }
}