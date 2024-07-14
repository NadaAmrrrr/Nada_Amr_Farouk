import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'filter_state.dart';
class FilterCubit extends Cubit<int> {
  FilterCubit() : super(0);

  void selectFilter(int index) {
    emit(index);
  }
}
