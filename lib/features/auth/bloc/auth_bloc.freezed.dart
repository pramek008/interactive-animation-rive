// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String fullname, String password, String email)
        register,
    required TResult Function(String message) showLoginError,
    required TResult Function() checkAuth,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String fullname, String password, String email)? register,
    TResult? Function(String message)? showLoginError,
    TResult? Function()? checkAuth,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String fullname, String password, String email)? register,
    TResult Function(String message)? showLoginError,
    TResult Function()? checkAuth,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(ShowLoginError value) showLoginError,
    required TResult Function(_AuthEventCheckAuth value) checkAuth,
    required TResult Function(_AuthEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(ShowLoginError value)? showLoginError,
    TResult? Function(_AuthEventCheckAuth value)? checkAuth,
    TResult? Function(_AuthEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(ShowLoginError value)? showLoginError,
    TResult Function(_AuthEventCheckAuth value)? checkAuth,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthEventLoginImplCopyWith<$Res> {
  factory _$$AuthEventLoginImplCopyWith(_$AuthEventLoginImpl value,
          $Res Function(_$AuthEventLoginImpl) then) =
      __$$AuthEventLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$AuthEventLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLoginImpl>
    implements _$$AuthEventLoginImplCopyWith<$Res> {
  __$$AuthEventLoginImplCopyWithImpl(
      _$AuthEventLoginImpl _value, $Res Function(_$AuthEventLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$AuthEventLoginImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginImpl implements _AuthEventLogin {
  const _$AuthEventLoginImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventLoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventLoginImplCopyWith<_$AuthEventLoginImpl> get copyWith =>
      __$$AuthEventLoginImplCopyWithImpl<_$AuthEventLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String fullname, String password, String email)
        register,
    required TResult Function(String message) showLoginError,
    required TResult Function() checkAuth,
    required TResult Function() logout,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String fullname, String password, String email)? register,
    TResult? Function(String message)? showLoginError,
    TResult? Function()? checkAuth,
    TResult? Function()? logout,
  }) {
    return login?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String fullname, String password, String email)? register,
    TResult Function(String message)? showLoginError,
    TResult Function()? checkAuth,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(ShowLoginError value) showLoginError,
    required TResult Function(_AuthEventCheckAuth value) checkAuth,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(ShowLoginError value)? showLoginError,
    TResult? Function(_AuthEventCheckAuth value)? checkAuth,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(ShowLoginError value)? showLoginError,
    TResult Function(_AuthEventCheckAuth value)? checkAuth,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogin implements AuthEvent {
  const factory _AuthEventLogin(
      {required final String username,
      required final String password}) = _$AuthEventLoginImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthEventLoginImplCopyWith<_$AuthEventLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventRegisterImplCopyWith<$Res> {
  factory _$$AuthEventRegisterImplCopyWith(_$AuthEventRegisterImpl value,
          $Res Function(_$AuthEventRegisterImpl) then) =
      __$$AuthEventRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullname, String password, String email});
}

/// @nodoc
class __$$AuthEventRegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventRegisterImpl>
    implements _$$AuthEventRegisterImplCopyWith<$Res> {
  __$$AuthEventRegisterImplCopyWithImpl(_$AuthEventRegisterImpl _value,
      $Res Function(_$AuthEventRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$AuthEventRegisterImpl(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventRegisterImpl implements _AuthEventRegister {
  const _$AuthEventRegisterImpl(
      {required this.fullname, required this.password, required this.email});

  @override
  final String fullname;
  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.register(fullname: $fullname, password: $password, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventRegisterImpl &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullname, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventRegisterImplCopyWith<_$AuthEventRegisterImpl> get copyWith =>
      __$$AuthEventRegisterImplCopyWithImpl<_$AuthEventRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String fullname, String password, String email)
        register,
    required TResult Function(String message) showLoginError,
    required TResult Function() checkAuth,
    required TResult Function() logout,
  }) {
    return register(fullname, password, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String fullname, String password, String email)? register,
    TResult? Function(String message)? showLoginError,
    TResult? Function()? checkAuth,
    TResult? Function()? logout,
  }) {
    return register?.call(fullname, password, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String fullname, String password, String email)? register,
    TResult Function(String message)? showLoginError,
    TResult Function()? checkAuth,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(fullname, password, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(ShowLoginError value) showLoginError,
    required TResult Function(_AuthEventCheckAuth value) checkAuth,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(ShowLoginError value)? showLoginError,
    TResult? Function(_AuthEventCheckAuth value)? checkAuth,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(ShowLoginError value)? showLoginError,
    TResult Function(_AuthEventCheckAuth value)? checkAuth,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _AuthEventRegister implements AuthEvent {
  const factory _AuthEventRegister(
      {required final String fullname,
      required final String password,
      required final String email}) = _$AuthEventRegisterImpl;

  String get fullname;
  String get password;
  String get email;
  @JsonKey(ignore: true)
  _$$AuthEventRegisterImplCopyWith<_$AuthEventRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowLoginErrorImplCopyWith<$Res> {
  factory _$$ShowLoginErrorImplCopyWith(_$ShowLoginErrorImpl value,
          $Res Function(_$ShowLoginErrorImpl) then) =
      __$$ShowLoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowLoginErrorImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowLoginErrorImpl>
    implements _$$ShowLoginErrorImplCopyWith<$Res> {
  __$$ShowLoginErrorImplCopyWithImpl(
      _$ShowLoginErrorImpl _value, $Res Function(_$ShowLoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowLoginErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowLoginErrorImpl implements ShowLoginError {
  const _$ShowLoginErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthEvent.showLoginError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLoginErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowLoginErrorImplCopyWith<_$ShowLoginErrorImpl> get copyWith =>
      __$$ShowLoginErrorImplCopyWithImpl<_$ShowLoginErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String fullname, String password, String email)
        register,
    required TResult Function(String message) showLoginError,
    required TResult Function() checkAuth,
    required TResult Function() logout,
  }) {
    return showLoginError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String fullname, String password, String email)? register,
    TResult? Function(String message)? showLoginError,
    TResult? Function()? checkAuth,
    TResult? Function()? logout,
  }) {
    return showLoginError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String fullname, String password, String email)? register,
    TResult Function(String message)? showLoginError,
    TResult Function()? checkAuth,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (showLoginError != null) {
      return showLoginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(ShowLoginError value) showLoginError,
    required TResult Function(_AuthEventCheckAuth value) checkAuth,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return showLoginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(ShowLoginError value)? showLoginError,
    TResult? Function(_AuthEventCheckAuth value)? checkAuth,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return showLoginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(ShowLoginError value)? showLoginError,
    TResult Function(_AuthEventCheckAuth value)? checkAuth,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (showLoginError != null) {
      return showLoginError(this);
    }
    return orElse();
  }
}

abstract class ShowLoginError implements AuthEvent {
  const factory ShowLoginError(final String message) = _$ShowLoginErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowLoginErrorImplCopyWith<_$ShowLoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventCheckAuthImplCopyWith<$Res> {
  factory _$$AuthEventCheckAuthImplCopyWith(_$AuthEventCheckAuthImpl value,
          $Res Function(_$AuthEventCheckAuthImpl) then) =
      __$$AuthEventCheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventCheckAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventCheckAuthImpl>
    implements _$$AuthEventCheckAuthImplCopyWith<$Res> {
  __$$AuthEventCheckAuthImplCopyWithImpl(_$AuthEventCheckAuthImpl _value,
      $Res Function(_$AuthEventCheckAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventCheckAuthImpl implements _AuthEventCheckAuth {
  const _$AuthEventCheckAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventCheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String fullname, String password, String email)
        register,
    required TResult Function(String message) showLoginError,
    required TResult Function() checkAuth,
    required TResult Function() logout,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String fullname, String password, String email)? register,
    TResult? Function(String message)? showLoginError,
    TResult? Function()? checkAuth,
    TResult? Function()? logout,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String fullname, String password, String email)? register,
    TResult Function(String message)? showLoginError,
    TResult Function()? checkAuth,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(ShowLoginError value) showLoginError,
    required TResult Function(_AuthEventCheckAuth value) checkAuth,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(ShowLoginError value)? showLoginError,
    TResult? Function(_AuthEventCheckAuth value)? checkAuth,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(ShowLoginError value)? showLoginError,
    TResult Function(_AuthEventCheckAuth value)? checkAuth,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _AuthEventCheckAuth implements AuthEvent {
  const factory _AuthEventCheckAuth() = _$AuthEventCheckAuthImpl;
}

/// @nodoc
abstract class _$$AuthEventLogoutImplCopyWith<$Res> {
  factory _$$AuthEventLogoutImplCopyWith(_$AuthEventLogoutImpl value,
          $Res Function(_$AuthEventLogoutImpl) then) =
      __$$AuthEventLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLogoutImpl>
    implements _$$AuthEventLogoutImplCopyWith<$Res> {
  __$$AuthEventLogoutImplCopyWithImpl(
      _$AuthEventLogoutImpl _value, $Res Function(_$AuthEventLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventLogoutImpl implements _AuthEventLogout {
  const _$AuthEventLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String fullname, String password, String email)
        register,
    required TResult Function(String message) showLoginError,
    required TResult Function() checkAuth,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String fullname, String password, String email)? register,
    TResult? Function(String message)? showLoginError,
    TResult? Function()? checkAuth,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String fullname, String password, String email)? register,
    TResult Function(String message)? showLoginError,
    TResult Function()? checkAuth,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegister value) register,
    required TResult Function(ShowLoginError value) showLoginError,
    required TResult Function(_AuthEventCheckAuth value) checkAuth,
    required TResult Function(_AuthEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegister value)? register,
    TResult? Function(ShowLoginError value)? showLoginError,
    TResult? Function(_AuthEventCheckAuth value)? checkAuth,
    TResult? Function(_AuthEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegister value)? register,
    TResult Function(ShowLoginError value)? showLoginError,
    TResult Function(_AuthEventCheckAuth value)? checkAuth,
    TResult Function(_AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogout implements AuthEvent {
  const factory _AuthEventLogout() = _$AuthEventLogoutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateSuccess value)? success,
    TResult? Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateInitialImplCopyWith<$Res> {
  factory _$$AuthStateInitialImplCopyWith(_$AuthStateInitialImpl value,
          $Res Function(_$AuthStateInitialImpl) then) =
      __$$AuthStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitialImpl>
    implements _$$AuthStateInitialImplCopyWith<$Res> {
  __$$AuthStateInitialImplCopyWithImpl(_$AuthStateInitialImpl _value,
      $Res Function(_$AuthStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateInitialImpl implements _AuthStateInitial {
  const _$AuthStateInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateSuccess value)? success,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthStateInitial implements AuthState {
  const factory _AuthStateInitial() = _$AuthStateInitialImpl;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoadingImpl implements _AuthStateLoading {
  const _$AuthStateLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateSuccess value)? success,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoading implements AuthState {
  const factory _AuthStateLoading() = _$AuthStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthStateSuccessImplCopyWith<$Res> {
  factory _$$AuthStateSuccessImplCopyWith(_$AuthStateSuccessImpl value,
          $Res Function(_$AuthStateSuccessImpl) then) =
      __$$AuthStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSuccessImpl>
    implements _$$AuthStateSuccessImplCopyWith<$Res> {
  __$$AuthStateSuccessImplCopyWithImpl(_$AuthStateSuccessImpl _value,
      $Res Function(_$AuthStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateSuccessImpl implements _AuthStateSuccess {
  const _$AuthStateSuccessImpl();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateSuccess value)? success,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthStateSuccess implements AuthState {
  const factory _AuthStateSuccess() = _$AuthStateSuccessImpl;
}

/// @nodoc
abstract class _$$AuthStateErrorImplCopyWith<$Res> {
  factory _$$AuthStateErrorImplCopyWith(_$AuthStateErrorImpl value,
          $Res Function(_$AuthStateErrorImpl) then) =
      __$$AuthStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthStateErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateErrorImpl>
    implements _$$AuthStateErrorImplCopyWith<$Res> {
  __$$AuthStateErrorImplCopyWithImpl(
      _$AuthStateErrorImpl _value, $Res Function(_$AuthStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateErrorImpl implements _AuthStateError {
  const _$AuthStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      __$$AuthStateErrorImplCopyWithImpl<_$AuthStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateSuccess value)? success,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError implements AuthState {
  const factory _AuthStateError(final String message) = _$AuthStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
