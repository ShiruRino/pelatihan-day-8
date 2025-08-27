import 'package:get/get.dart';
import 'package:pendaftaran_app/modules/auth/controller/auth_controller.dart';

class AuthBinding extends Bindings{
 @override
  void dependencies() {
    Get.lazyPut<AuthController>(()=>AuthController());
  }
}