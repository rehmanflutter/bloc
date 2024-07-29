import 'package:animate_do/animate_do.dart';
import 'package:block_count/Ui/Home/home.dart';
import 'package:block_count/Ui/auth/sigup.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_bloc.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_event.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_status.dart';
import 'package:block_count/main.dart';
import 'package:block_count/utils/custom_Button.dart';
import 'package:block_count/utils/images.dart';
import 'package:block_count/utils/textCustam.dart';
import 'package:block_count/utils/textFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              17.h.height,
              FadeInRight(
                child: Textcustam(
                  text: 'Login',
                  size: 20,
                  weight: FontWeight.w600,
                ),
              ),
              2.height,
              FadeInLeft(
                child: Textcustam(
                  text: 'Please enter email & password',
                  size: 12,
                  weight: FontWeight.w300,
                  col: Color(0xff90A3BF),
                ),
              ),
              15.height,
              FadeInRight(
                child: Textcustam(
                  text: 'Email',
                  size: 12,
                  weight: FontWeight.w300,
                ),
              ),
              5.height,
              FadeInUp(
                child: Textfiledcustam(
                  hinttext: 'Enter Your Email',
                ),
              ),
              15.height,
              FadeInRight(
                child: Textcustam(
                  text: 'Password',
                  size: 12,
                  weight: FontWeight.w300,
                ),
              ),
              5.height,
              FadeInLeft(
                child: BlocBuilder<SwitchBloc, Switchstatus>(
                  //    rebuild nahe hoga jab widget use ho ga tab he
                  //    build ho ga otherevise ya  be rebuild hota ha

                  buildWhen: (previous, current) =>
                      previous.ischeck != current.ischeck,
                  builder: (context, state) => Textfiledcustam(
                      hinttext: 'Enter Your Password',
                      obscur: state.ischeck,
                      lasticon: GestureDetector(
                        onTap: () {
                          context.read<SwitchBloc>().add(SwitchDisableEnable());
                        },
                        child: Icon(
                          state.ischeck
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                        ),
                      )),
                ),
              ),
              10.h.height,
              RoundButton(
                title: 'Login',
                fun: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
              ),
              3.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textcustam(text: 'Don’t have an account?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigupScreen(),
                          ));
                    },
                    child: Textcustam(
                      text: ' Sign up',
                      col: appcolour,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
