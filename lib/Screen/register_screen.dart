import 'package:aurora_task/Styling/colors.dart';
import 'package:aurora_task/Styling/textStyles.dart';
import 'package:aurora_task/Widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage('images/auroraTaskRegisterScreenBG.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 20.0),
                          child: InkWell(
                            onTap: () => Get.back(),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(
                                backgroundColor: AppColors.whiteColor,
                                radius: 15,
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Welcome To \nVeritable Nortary',
                              style: AppTextStyles.titleText
                                  .copyWith(color: AppColors.whiteColor),
                            ),
                          ),
                        ),
                        Text(
                          'Let\'s start by getting your account setup ',
                          style: AppTextStyles.titleText.copyWith(
                              color: AppColors.whiteColor, fontSize: 14),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.035,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 5.0),
                              child: Text(
                                'First Name *',
                                style: AppTextStyles.forgetPasswordText,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColors.whiteColor),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'John',
                                  hintStyle: AppTextStyles.textField,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
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
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 5.0),
                              child: Text(
                                'Last Name *',
                                style: AppTextStyles.forgetPasswordText,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColors.whiteColor),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Doe',
                                  hintStyle: AppTextStyles.textField,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
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
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 5.0),
                              child: Text(
                                'Email *',
                                style: AppTextStyles.forgetPasswordText,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColors.whiteColor),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'johndoe@gmail.com',
                                  hintStyle: AppTextStyles.textField,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
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
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 5.0),
                              child: Text(
                                'Phone Number *',
                                style: AppTextStyles.forgetPasswordText,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColors.whiteColor),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: '+380662100222',
                                  hintStyle: AppTextStyles.textField,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 5.0),
                              child: Text(
                                'Password *',
                                style: AppTextStyles.forgetPasswordText,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColors.whiteColor),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: '*********',
                                  hintStyle: AppTextStyles.textField,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedGradientButton(
                    child: Text(
                      'SUBMIT',
                      style: AppTextStyles.buttonText,
                    ),
                    gradient: LinearGradient(
                      colors: <Color>[
                        AppColors.orangeColor,
                        AppColors.deepOrangeColor
                      ],
                    ),
                    onPressed: () => Get.back(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
