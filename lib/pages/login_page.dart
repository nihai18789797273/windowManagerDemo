import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:window_demo/routes/app_route_rulers.dart';
import 'package:window_manager/window_manager.dart';

class BindUserIdPage extends StatelessWidget {
  const BindUserIdPage({super.key});

  @override
  Widget build(BuildContext context) {
    //设置窗口大小
    windowManager.setSize(const Size(800, 600));
    return Scaffold(
      appBar: PreferredSize(
        //该方法设置了窗口控制按钮，以及标题
        preferredSize: const Size.fromHeight(kWindowCaptionHeight),
        //该方法设置了窗口控制按钮，以及标题
        child: WindowCaption(
          brightness: Theme.of(context).brightness,
          title: const Text('马良笔'),
        ),
      ),
      body: TextButton(
          onPressed: () {
            //跳转到首页
            Get.toNamed(AppRoutesName.homePage);
          },
          child: const Text('跳转到首页')),
    );
  }
}
