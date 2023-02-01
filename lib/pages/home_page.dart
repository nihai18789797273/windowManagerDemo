import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //设置窗口大小
    windowManager.setSize(const Size(600, 960));
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: const Text('首页'),
    );
  }
}
