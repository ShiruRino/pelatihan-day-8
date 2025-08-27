import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pendaftaran_app/core/routes/routes/app_routes.dart';
import 'package:pendaftaran_app/modules/auth/bindings/auth_binding.dart';
import 'package:pendaftaran_app/modules/home/views/home_view.dart';
class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: AuthBinding(),
      ),
  ];
}