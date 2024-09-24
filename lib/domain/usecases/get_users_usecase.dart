import 'package:flutter_getx_clean_architecture/domain/entities/user.dart';
import 'package:flutter_getx_clean_architecture/domain/repositories/user_repository.dart';

class GetUsersUseCase {
  final UserRepository repository;

  GetUsersUseCase({required this.repository});

  Future<List<User>> call() async {
    return await repository.getUsers();
  }
}
