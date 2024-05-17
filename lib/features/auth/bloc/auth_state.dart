part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthStateInitial;
  const factory AuthState.loading() = _AuthStateLoading;
  // const factory AuthState.success(LoginResponse response) = _AuthStateSuccess;
  const factory AuthState.success() = _AuthStateSuccess;
  const factory AuthState.error(String message) = _AuthStateError;
}
