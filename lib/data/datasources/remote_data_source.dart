
import 'package:flutter_getx_clean_architecture/core/services/api_service.dart';
import 'package:flutter_getx_clean_architecture/data/models/user_model.dart';

abstract class RemoteDataSource {
  Future<List<UserModel>> fetchUsers();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiService apiService;

  RemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<UserModel>> fetchUsers() async {
    final data =
        await apiService.get('https://jsonplaceholder.typicode.com/users');
    List<UserModel> users =
        (data as List).map((json) => UserModel.fromJson(json)).toList();
    return users;
  }
}
