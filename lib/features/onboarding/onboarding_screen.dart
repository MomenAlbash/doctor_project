import 'package:doctorproject/core/theming/styles.dart';
import 'package:doctorproject/features/onboarding/widgets/dog_log_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),

          child: SingleChildScrollView(
            child: Column(children: [
              DogLogAndName(),
              SizedBox(height: 30.h,),
              const DoctorImageAndText(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.5),
                child: Column(
                  children: [
            
                  Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                    SizedBox(height: 30.h,),
                    GetStartedButton()
            
                  ],
                ),
              ),
            
            ]),
          ),
        ),
      ),
    );
  }
}
