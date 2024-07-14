import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubic_state.dart';


class CubicCubit extends Cubit<CubicState> {
  CubicCubit() : super(CubicInitial());

  void showText() => emit(CubicShowText());
  void showCubitImage() => emit(CubicShowImage());
  void showRedCircle() => emit(CubicShowRedCircle());
  void reset() => emit(CubicInitial());
}