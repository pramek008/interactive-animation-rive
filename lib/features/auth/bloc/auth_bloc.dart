import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        login: (username, password) async {
          try {
            emit(const AuthState.loading());
            // final response = await AuthRepositoryImpl().login(
            //   LoginRequest(username: username, password: password),
            // );
            // final loginPayload = response.payload;
            // print('loginPayload ${loginPayload}');

            // var secureStorage = locator.get<SecureStorage>();
            // await secureStorage.writeToken(loginPayload!.accessToken!);
            // locator.get<GoRouter>().goNamed(HomeScreen.routeName);
            if (username == 'admin' && password == 'admin') {
              emit(const AuthState.success());
            } else {
              emit(const AuthState.error('Gagal melakukan login'));
            }
            emit(const AuthState.success());
          } catch (e) {
            emit(const AuthState.error('Gagal melakukan login'));
          }
        },
        register: (fullname, password, email) async {
          emit(const AuthState.loading());
          try {
            // Lakukan proses register
            // Jika berhasil, emit(AuthState.success())
            // Jika gagal, emit(AuthState.error('Pesan Error'))
          } catch (e) {
            emit(const AuthState.error('Gagal melakukan registrasi'));
          }
        },
        checkAuth: () async {
          // Lakukan pengecekan otentikasi
          // Jika berhasil, emit(AuthState.success())
          // Jika gagal, emit(AuthState.error('Pesan Error'))
        },
        logout: () async {
          // Lakukan proses logout
          // Jika berhasil, emit(AuthState.initial())
          // Jika gagal, emit(AuthState.error('Pesan Error'))
        },
        showLoginError: (message) async {
          emit(AuthState.error(message));
        },
      );
    });
  }
}
