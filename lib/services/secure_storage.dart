import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStorage {
  Future<void> write(String key, String value);

  Future<String?> read(String key);

  Future<void> delete(String key);

  Future<Map<String, String>> readAll();

  Future<void> deleteAll();

  Future<bool> containsKey(String key);
}

class SecureStorageImpl implements SecureStorage {
  SecureStorageImpl(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  static const _keyToken = 'token';
  static const _keyLoginResponse = 'login_response';
  static const _keyUserProfile = 'userprofile';
  static const _keyIsFirstTime = 'is_first_time';

  @override
  Future<void> write(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) async {
    return await _secureStorage.read(key: key);
  }

  @override
  Future<void> delete(String key) async {
    await _secureStorage.delete(key: key);
  }

  @override
  Future<Map<String, String>> readAll() async {
    return await _secureStorage.readAll();
  }

  @override
  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }

  @override
  Future<bool> containsKey(String key) async {
    return await _secureStorage.containsKey(key: key);
  }
}

extension AuthSecureStorage on SecureStorage {
  Future<void> writeToken(String token) async {
    await write(SecureStorageImpl._keyToken, token);
  }

  Future<String?> readToken() async {
    return await read(SecureStorageImpl._keyToken);
  }

  Future<void> deleteToken() async {
    await delete(SecureStorageImpl._keyToken);
  }

  Future<void> writeLoginResponse(String loginResponse) async {
    await write(SecureStorageImpl._keyLoginResponse, loginResponse);
  }

  Future<String?> readLoginResponse() async {
    return await read(SecureStorageImpl._keyLoginResponse);
  }

  Future<void> deleteLoginResponse() async {
    await delete(SecureStorageImpl._keyLoginResponse);
  }

  Future<void> writeUserProfile(String userProfile) async {
    await write(SecureStorageImpl._keyUserProfile, userProfile);
  }

  Future<String?> readUserProfile() async {
    return await read(SecureStorageImpl._keyUserProfile);
  }

  Future<void> deleteUserProfile() async {
    await delete(SecureStorageImpl._keyUserProfile);
  }

  Future<void> writeIsFirstTime(String isFirstTime) async {
    await write(SecureStorageImpl._keyIsFirstTime, isFirstTime);
  }
}
