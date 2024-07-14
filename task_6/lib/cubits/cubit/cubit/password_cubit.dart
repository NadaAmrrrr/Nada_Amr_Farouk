import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordState(isHidden: true));

  void togglePasswordVisibility() {
    emit(state.copyWith(isHidden: !state.isHidden));
  }
}
