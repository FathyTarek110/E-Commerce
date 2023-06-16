import 'package:e_commerce/data/services/local/cache.dart';
import 'package:e_commerce/data/services/remote/dio_helper.dart';
import 'package:flutter/material.dart';

import 'app/my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  DioHelper.init();
  runApp(const MyApp());
}

