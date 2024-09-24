import 'package:get_storage/get_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final GetStorage _storage = GetStorage();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  // Get Storage Methods
  dynamic read(String key) => _storage.read(key);
  Future<void> write(String key, dynamic value) => _storage.write(key, value);
  Future<void> remove(String key) => _storage.remove(key);

  // Secure Storage Methods
  Future<void> writeSecure(String key, String value) =>
      _secureStorage.write(key: key, value: value);
  Future<String?> readSecure(String key) => _secureStorage.read(key: key);
  Future<void> deleteSecure(String key) => _secureStorage.delete(key: key);
}
