import 'package:doctorproject/core/helpers/extensions.dart';
import 'package:doctorproject/core/router/routes.dart';
import 'package:doctorproject/core/theming/colors.dart';
import 'package:doctorproject/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: (){
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity,52),
        ),

      ),
        child: Text('Get Started',style: TextStyles.font16WhiteSimiBold,),);
  }
}
