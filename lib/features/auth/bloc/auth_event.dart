part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String username,
    required String password,
  }) = _AuthEventLogin;

  const factory AuthEvent.register({
    required String fullname,
    required String password,
    required String email,
  }) = _AuthEventRegister;

  const factory AuthEvent.showLoginError(String message) =
      ShowLoginError; // New event

  const factory AuthEvent.checkAuth() = _AuthEventCheckAuth;

  const factory AuthEvent.logout() = _AuthEventLogout;
}
