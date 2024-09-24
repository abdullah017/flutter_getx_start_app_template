import 'package:flutter_getx_clean_architecture/core/error/exceptions.dart';
import 'package:flutter_getx_clean_architecture/core/error/failures.dart';
import 'package:flutter_getx_clean_architecture/data/datasources/remote_data_source.dart';
import 'package:flutter_getx_clean_architecture/domain/entities/user.dart';
import 'package:flutter_getx_clean_architecture/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final RemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<User>> getUsers() async {
    try {
      final users = await remoteDataSource.fetchUsers();
      return users.map((model) => model.toEntity()).toList();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    } catch (e) {
      throw ServerFailure('Unexpected error');
    }
  }
}
