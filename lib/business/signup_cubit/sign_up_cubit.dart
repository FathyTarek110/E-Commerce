import 'package:bloc/bloc.dart';
import 'package:e_commerce/data/services/remote/dio_helper.dart';
import 'package:e_commerce/presentation/resources/strings_manger/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  static bool obscure = false;
  var formKey = GlobalKey<FormState>();
  static SignUpCubit get(context)=>BlocProvider.of(context);
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController = TextEditingController();

  
  userSignUp({required String name,required String email,required String phone,required String password,}){
    emit(UserSignUpLoadingState());
    DioHelper.postData(url: UrlManager.register, data: {
      'name': name,
      'email':email,
      'password':password,
      'phone':phone

    }).then((value) {
      print(value);

      emit(UserSignUpSuccessState());
    }).catchError((e){
      print(e);
      emit(UserSignUpErrorState());
    });
  }

  void visibility() {
    SignUpCubit.obscure =! SignUpCubit.obscure;
    print(SignUpCubit.obscure);
    emit(SignUpChangeIcon());
  }
  
}
