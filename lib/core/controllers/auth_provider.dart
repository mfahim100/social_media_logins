import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier{

  final TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;



  String? nameValidator (String? txt){
    if(txt!.isEmpty){
      return 'Please Provide Name';
  }
    return null;
  }

 String? emailValidator (String? txt){
    if(txt!.isEmpty){
      return 'Please Provide Email';
  }
    return null;
  }

  String?  passwordValidator(String? txt){
    if(txt!.isEmpty){
      return 'Please Provide Email';
  }
    return null;
  }



}