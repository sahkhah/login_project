import 'package:flutter/material.dart';
import 'package:login_project/src/common_widget/forms/form_header_widget.dart';
import 'package:login_project/src/constants/image_strings.dart';
import 'package:login_project/src/constants/sizes.dart';
import 'package:login_project/src/constants/text_strings.dart';

import '../../../../../common_widget/fade_in_animation/animation_design.dart';
import '../../../../../common_widget/fade_in_animation/fade_in_animation_model.dart';


class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(    //always add this in forms screen so that it's contents can scroll
          child: Stack(
            children: [
              Container(
              padding: const EdgeInsets.all(20.0),
              child: FadeInAnimationWidget(
            animate: true,
            durationInMs: 1200,
            animatePosition: AnimationPosition(
              bottomAfter: 0,
              bottomBefore: 0,
              leftAfter: 0,
              leftBefore: -100,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
                child: Column(
                  children:  [
                   const SizedBox(height: defaultSize * 4,),   //to add some spaces at the top
                   const FormHeaderWidget(subtitle: forgetPasswordSubtitle, image: forgetPasswordImage, title: forgetPasswordTitle,
                   crossAxisAlignment: CrossAxisAlignment.center, heightBetween: 30.0,
                   textAlign: TextAlign.center,),
                   const SizedBox(height: formHeight,),
                   Form(
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: const TextInputType.numberWithOptions(),
                        decoration: const InputDecoration(
                          label: Text(phoneNo),
                          hintText: phoneNo,
                          prefixIcon: Icon(Icons.mobile_friendly_rounded),
                        ),),
                        const SizedBox(height: 20.0,),
                         SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){}, 
                          child: const Text('NEXT')),
                        )
                      ],
                    )),
                  ],
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