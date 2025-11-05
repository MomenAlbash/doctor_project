import 'package:doctorproject/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DogLogAndName extends StatelessWidget {
  const DogLogAndName({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/docdoc_logo.svg'),
         SizedBox(width: 10.h,),
        Text('DocDoc',style: TextStyles.font24Black700Weight,),

      ],
    );
  }
}
