import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/presentation/resources/color_manger/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../business/login_cubit/login_cubit.dart';
import '../values_manager/values_manger.dart';

TextFormField myTextFormField({required BuildContext context,required TextEditingController controller,required String label,IconData? iconData,Widget? suffixIcon, required bool obscure,required bool enableSuggestions,required bool autoCorrect,TextInputType? textInputType,var validate}){
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.all(AppPadding.p16),
      label: Text(label,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorManager.gray),),
      suffixIcon: suffixIcon,
    ),
    obscureText: obscure,
    enableSuggestions: enableSuggestions,
    autocorrect: autoCorrect,
    keyboardType: textInputType,
    validator: validate,
  );
}


ElevatedButton buildMyButton(BuildContext context,String text,VoidCallback? function) {
  return ElevatedButton(onPressed: function, child: Padding(
    padding:  const EdgeInsets.all(AppPadding.p12),
    child: Text(text,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorManager.white),),
  ));
}

