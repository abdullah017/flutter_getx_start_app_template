import 'package:flutter_getx_clean_architecture/core/services/api_service_impl.dart';
import 'package:flutter_getx_clean_architecture/core/services/connectivity_service_impl.dart';
import 'package:flutter_getx_clean_architecture/domain/repositories/user_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

import 'core/services/api_service.dart';
import 'core/services/connectivity_service.dart';
import 'data/datasources/remote_data_source.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/get_users_usecase.dart';
import 'presentation/controllers/user_controller.dart';
import 'core/services/notification_service.dart';
import 'core/services/storage_service.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton(() => Logger());
  sl.registerLazySingleton(() => Dio());

  // Services
  sl.registerLazySingleton<ApiService>(() => ApiServiceImpl(dio: sl()));
  sl.registerLazySingleton<ConnectivityService>(
      () => ConnectivityServiceImpl());

  // Data Sources
  sl.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(apiService: sl()));

  // Repositories
  sl.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(remoteDataSource: sl()));

  // Use Cases
  sl.registerLazySingleton<GetUsersUseCase>(
      () => GetUsersUseCase(repository: sl()));

  // Controllers
  sl.registerFactory<UserController>(
      () => UserController(getUsersUseCase: sl()));

  // Notification Service
  sl.registerLazySingleton<NotificationService>(() => NotificationService());

  // Storage Service
  sl.registerLazySingleton<StorageService>(() => StorageService());

  // Initialize GetStorage
  sl.registerSingletonAsync<GetStorage>(() async {
    await GetStorage.init();
    return GetStorage();
  });
}
