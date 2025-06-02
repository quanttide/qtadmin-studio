/// APP入口

import 'package:flutter/material.dart';


/// APP入口函数
void main() {
  runApp(const QtAdmin());
}

/// APP类
class QtAdmin extends StatelessWidget {
  const QtAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '量潮企业管理后台',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: const {
        /// 项目列表页面
        
      }
    );
  }
}
