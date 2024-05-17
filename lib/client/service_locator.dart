import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../route/router_navigator.dart';
import '../services/secure_storage.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<GoRouter>(router);
  // locator.registerSingleton<AppServices>(AppServicesImpl());
  // locator.registerLazySingleton<ApiConfig>(() => ApiConfig());
  locator.registerLazySingleton<FlutterSecureStorage>(
      () => const FlutterSecureStorage());
  locator.registerLazySingleton<SecureStorage>(
      () => SecureStorageImpl(locator.get<FlutterSecureStorage>()));
}
