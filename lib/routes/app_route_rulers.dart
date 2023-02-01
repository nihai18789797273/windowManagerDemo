import 'package:get/get.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/welcome_page.dart';

part 'app_routes_name.dart';

//此处定义getx要用到的所有的路由跳转规则包含路由页面之间的层级包含关系都在此定义。 - GetPage方法
// 是定义路由的关键。
class AppRouteRulers {
  //App初始化加载时使用的路由名称
  static const INITIAL = AppRoutesName.welcomePage;

  //全局所有的路由规则在此定义
  static final List<GetPage> routes = [
    //欢迎页
    GetPage(
      name: AppRoutesName.welcomePage,
      page: () => const WelcomePage(),
    ),
    //登录
    GetPage(
      name: AppRoutesName.loginPage,
      page: () => const BindUserIdPage(),
      transitionDuration: const Duration(milliseconds: 300),
      transition: Transition.fadeIn,
    ),
    //Home >
    GetPage(
      name: AppRoutesName.homePage,
      page: () => const HomePage(),
      transitionDuration: const Duration(milliseconds: 200),
      transition: Transition.fadeIn,
    ),
  ];
}
