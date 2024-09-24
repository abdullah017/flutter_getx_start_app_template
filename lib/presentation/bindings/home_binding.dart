import 'package:flutter_getx_clean_architecture/domain/usecases/get_users_usecase.dart';
import 'package:flutter_getx_clean_architecture/presentation/controllers/user_controller.dart';
import 'package:get/get.dart';
import '../../injection_container.dart' as di;

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(
      () => UserController(getUsersUseCase: di.sl<GetUsersUseCase>()),
    );
  }
}
