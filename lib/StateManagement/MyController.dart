import 'package:aurora_task/Screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  Future<User> register({String email, String password}) async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email.toString(),
        password: password.toString(),
      );

      user = userCredential.user;
    } catch (e) {
      debugPrint('User Exception********$e');
    }
    update();

    return user;
  }

  Future<void> signOut() async {
    await _auth.signOut().then((value) => Get.to(LoginScreen()));
  }
}
