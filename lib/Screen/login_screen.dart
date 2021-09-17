import 'dart:ui';

import 'package:aurora_task/Screen/register_screen.dart';
import 'package:aurora_task/StateManagement/MyController.dart';
import 'package:aurora_task/Styling/colors.dart';
import 'package:aurora_task/Styling/textStyles.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home.dart';
import '../Widgets/customButton.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController;

  TextEditingController _passwordController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  var myControllerObj = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: myControllerObj,
        builder: (controller) => Form(
          key: _formKey,
          child: SingleChildScrollView(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: FlareActor(
                    "images/elms_login.flr",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    animation: "Flow",
                    antialias: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 55,
                        backgroundImage: NetworkImage(
                            'https://cdn.imgbin.com/2/4/15/imgbin-computer-icons-portable-network-graphics-avatar-icon-design-avatar-DsZ54Du30hTrKfxBG5PbwvzgE.jpg'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.095,
                      ),
                      Text(
                        'Login',
                        style: AppTextStyles.titleText,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: AppColors.whiteColor),
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: AppTextStyles.textField,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: AppColors.whiteColor),
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: AppTextStyles.textField,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter Password';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Text(
                        'Forgot Password?',
                        style: AppTextStyles.forgetPasswordText,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      RaisedGradientButton(
                        child: Text(
                          'LOGIN',
                          style: AppTextStyles.buttonText,
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[
                            AppColors.orangeColor,
                            AppColors.deepOrangeColor
                          ],
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            myControllerObj.register(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );

                            Get.to(Home());
                          }
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      InkWell(
                        onTap: () => Get.to(RegisterScreen()),
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5,
                              sigmaY: 5,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.08,

                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      AppColors.secondMainColor.withOpacity(0.5),
                                      AppColors.mainColor
                                    ],
                                  ),
                                  color:
                                      AppColors.secondMainColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: AppTextStyles.buttonText,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
