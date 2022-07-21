/// APP入口

import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:qtprojects_widgets/qtprojects_widgets.dart';
import 'environment_config.dart';


/// APP入口函数
void main() {
  setPathUrlStrategy();
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
      routes: {
        /// 项目列表页面
        '/': (context) => const ProjectListRoute(
            apiRoot: EnvironmentConfig.qtProjectsApiRoot
        ),
      }
    );
  }
}
