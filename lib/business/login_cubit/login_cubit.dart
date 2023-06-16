import 'package:bloc/bloc.dart';
import 'package:e_commerce/data/services/remote/dio_helper.dart';
import 'package:e_commerce/presentation/resources/strings_manger/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../presentation/resources/color_manger/color_manager.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  var formKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  static bool obscure = false;

  static LoginCubit get(context) => BlocProvider.of(context);

  void visibility() {
    LoginCubit.obscure =! LoginCubit.obscure;
    print(LoginCubit.obscure);
    emit(LoginChangeIcon());
  }
  
  userLogin({required String email,required String password}){
    emit(UserLoginLoadingState());
    DioHelper.postData(url: UrlManager.login,
        data: {
          'email' :  email,
          'password' :password
        }
    ).then((value) {
      print(value?.data);
      emit(UserLoginSuccessState());
    }).catchError((e){
      print(e);
      emit(UserLoginErrorState());
    });
  }
}