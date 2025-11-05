import 'package:doctorproject/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]
            ),
          ),
          child: Image.asset('assets/images/doctor.png'),
        ),
        Positioned(
          bottom: 30,
            child:Text('Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyles.font32BlueBold.copyWith(
              height: 1.4,
            ),),
        ),
      ],
    );
  }
}
