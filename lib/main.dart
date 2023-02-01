import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:window_demo/routes/app_route_rulers.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 必须加上这一行。
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    //这里的title设置的是底部菜单栏显示的名称
    title: '马良笔',
    size: Size(300, 600),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //配置App的移动app的显示名称。
      title: '马良笔',
      //是否启用getx包的日志输出。
      enableLog: true,
      //App初始化时自动跳转到的页面对应的路由配置。程序一开始运行要跳转到哪个页面在此处配置。
      initialRoute: AppRouteRulers.INITIAL,
      //整个app中使用getx作为路由时的路由表配置类是哪个。
      getPages: AppRouteRulers.routes,
    );
  }
}
