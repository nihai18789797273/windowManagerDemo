import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:window_demo/routes/app_route_rulers.dart';
import 'package:window_manager/window_manager.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //设置窗口大小
    windowManager.setSize(const Size(400, 400));
    //2秒后跳转到首页
    Future.delayed(const Duration(seconds: 2))
        .then((value) => {Get.toNamed(AppRoutesName.loginPage)});
    return Scaffold(
      appBar: AppBar(
        title: const Text('欢迎页'),
      ),
      body: const Text('欢迎页'),
    );
  }
}
