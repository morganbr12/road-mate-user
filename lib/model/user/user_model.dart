import 'package:flutter/material.dart';

class UserModel {
  final idController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();
  final phoneNumberController = TextEditingController();

  Future<void> createUserAccount({
    required BuildContext context,
    bool mounted = true,
  }) async {}

  Future<void> logUserIn({
    required BuildContext context,
    bool mounted = true,
  }) async {}
}
