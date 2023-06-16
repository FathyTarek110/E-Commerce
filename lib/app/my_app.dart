import 'package:e_commerce/presentation/resources/theme_manager/theme_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/routes_manger/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: appTheme(),
    );
  }
}
