
import 'package:flutter/material.dart';
import 'package:math_solver/app/core/constants/string_constants.dart';
import 'package:math_solver/app/core/device_sizes/device_sizes.dart';
import 'package:math_solver/app/presentation/onboarding/widgets/onboarding_text_columns.dart';
import 'package:math_solver/app/presentation/onboarding/widgets/purple_background.dart';

class OnBoardingThree extends StatelessWidget {
  const OnBoardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const PurpleBackground(),
          Positioned(
            top: 0,
            child: SizedBox(
              height: DeviceSize.height! * 0.79,
              width: DeviceSize.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: DeviceSize.height! * 0.10,
                    ),
                    //
                    //
                    Expanded(
                      child: SizedBox(
                        height: DeviceSize.height! * 0.45,
                        width: DeviceSize.width,
                        child: Image.asset(
                          AssetsPath.precacheList[1],
                          height: DeviceSize.width! * 0.7,
                          width: DeviceSize.width,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    //
                    //
                    const OnBoardingTextColumn(
                      title: TextConstants.learnText,
                      subtitle1: TextConstants.understandSolvingProcessText,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}