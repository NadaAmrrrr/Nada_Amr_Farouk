part of 'password_cubit.dart';

class PasswordState {
  final bool isHidden;

  PasswordState({required this.isHidden});

  PasswordState copyWith({bool? isHidden}) {
    return PasswordState(
      isHidden: isHidden ?? this.isHidden,
    );
  }
}