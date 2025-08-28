import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
class AuthController extends GetxController{
  final Dio _dio = Dio(BaseOptions(baseUrl: "http://192.168.100.167:8000/api"));
  var isLoading = false.obs;
  var token = "".obs;
  Future<void> login(String email, String password)
  async {
    isLoading.value = true;
    try{
      final response = await _dio.post(
        '/login', data: {'email': email, 'password': password}
      );
      if(response.statusCode == 200){
        final prefs = await SharedPreferences.getInstance();
        token.value = response.data['token'];
        await prefs.setString('token',token.value);
        Get.offAllNamed('/profile');
      }
    } catch (e){
      Get.snackbar('Login Failed', e.toString());
    } finally{
      isLoading.value = false;
    }
  }
}