import 'package:flutter_getx_clean_architecture/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
}
