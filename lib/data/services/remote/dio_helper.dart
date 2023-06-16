import 'package:dio/dio.dart';
import 'package:e_commerce/presentation/resources/strings_manger/strings_manager.dart';

class DioHelper{
  static late Dio dio ;
  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: UrlManager.baseUrl,
        receiveDataWhenStatusError: true,
        headers: {
          'lang' : 'en',
          'Content-Type' : 'application/json',
        }
      )
    );
  }
  static Future<Response?> getData({required String url,Map<String,dynamic>? query})async{
    return await dio.get(url,queryParameters: query);
  }
  static Future<Response?> postData({required String url,Map<String,dynamic>? query,required Map<String,dynamic> data })async{
    return await dio.post(url,queryParameters: query,data: data);
  }
  
}