import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pendaftaran_app/core/routes/routes/app_routes.dart';
import 'package:pendaftaran_app/modules/auth/bindings/auth_binding.dart';
import 'package:pendaftaran_app/modules/auth/views/dashboard_view.dart';
import 'package:pendaftaran_app/modules/home/views/home_view.dart';
import 'package:pendaftaran_app/modules/home/views/login_view.dart';
import 'package:pendaftaran_app/modules/register/views/register_view.dart';
import 'package:pendaftaran_app/modules/welcome/views/welcome_view.dart';
class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeView(),
      binding: AuthBinding(),
      ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: AuthBinding(),
      ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterView(),
      binding: AuthBinding(),
      ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      binding: AuthBinding(),
      ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const DashboardView(),
      binding: AuthBinding(),
      ),
  ];
}