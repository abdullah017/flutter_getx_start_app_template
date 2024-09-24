import 'package:flutter_getx_clean_architecture/domain/entities/user.dart';
import 'package:flutter_getx_clean_architecture/domain/usecases/get_users_usecase.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final GetUsersUseCase getUsersUseCase;

  UserController({required this.getUsersUseCase});

  var users = <User>[].obs;
  var isLoading = false.obs;
  var error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      isLoading.value = true;
      var fetchedUsers = await getUsersUseCase();
      users.assignAll(fetchedUsers);
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
