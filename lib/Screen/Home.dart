

import 'package:aurora_task/Styling/colors.dart';
import 'package:aurora_task/Styling/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../StateManagement/MyController.dart';
import '../Widgets/customButton.dart';

class Home extends StatelessWidget {
  final myControllerObj = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: AppColors.mainColor,
      ),
      body: GetBuilder(
        init: myControllerObj,
        builder: (controller) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login successful',style: AppTextStyles.titleText,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
              RaisedGradientButton(
                child: Text(
                  'Logout',
                  style: AppTextStyles.buttonText,
                ),
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.orangeColor,
                    AppColors.deepOrangeColor
                  ],
                ),
                onPressed: () => myControllerObj.signOut(),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

