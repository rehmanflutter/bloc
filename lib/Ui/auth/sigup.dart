import 'package:animate_do/animate_do.dart';
import 'package:block_count/bloc/sigup_bloc/sigup_blocs.dart';
import 'package:block_count/bloc/sigup_bloc/sigup_event.dart';
import 'package:block_count/bloc/sigup_bloc/sigup_status.dart';
import 'package:block_count/main.dart';
import 'package:block_count/utils/custom_Button.dart';
import 'package:block_count/utils/images.dart';
import 'package:block_count/utils/textCustam.dart';
import 'package:block_count/utils/textFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SigupScreen extends StatelessWidget {
  const SigupScreen({super.key});

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
              20.h.height,
              FadeInRight(
                child: Textcustam(
                  text: 'Create Account',
                  size: 20,
                  weight: FontWeight.w600,
                ),
              ),
              // 2.height,
              // FadeInLeft(
              //   child: Textcustam(
              //     text: 'Please enter email & password',
              //     size: 12,
              //     weight: FontWeight.w300,
              //     col: Color(0xff90A3BF),
              //   ),
              // ),
              30.height,
              FadeInRight(
                child: Textcustam(
                  text: 'UserName',
                  size: 12,
                  weight: FontWeight.w300,
                ),
              ),
              5.height,
              FadeInUp(
                child: Textfiledcustam(
                  hinttext: 'Enter Your name',
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
                child: BlocBuilder<SigupBlocs, SigupStatus>(
                  //    rebuild nahe hoga jab widget use ho ga tab he
                  //    build ho ga otherevise ya  be rebuild hota ha

                  buildWhen: (previous, current) =>
                      previous.password != current.password,
                  builder: (context, state) => Textfiledcustam(
                      hinttext: 'Enter Your Password',
                      obscur: state.password,
                      lasticon: GestureDetector(
                        onTap: () {
                          context.read<SigupBlocs>().add(passwordHide());
                        },
                        child: Icon(
                          state.password
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                        ),
                      )),
                ),
              ),
              10.h.height,
              Row(
                children: [
                  BlocBuilder<SigupBlocs, SigupStatus>(
                    builder: (context, state) => GestureDetector(
                      onTap: () {
                        context.read<SigupBlocs>().add(PrivacyCheck());
                      },
                      child: Icon(
                          state.privacy
                              ? Icons.check_circle
                              : Icons.check_circle_outline_rounded,
                          color: state.privacy ? Colors.green : lightgray),
                    ),
                  ),
                  Textcustam(
                    text: '   I accept the terms and privacy policy',
                    col: Colors.grey,
                  )
                ],
              ),
              2.h.height,
              RoundButton(
                title: 'SigUp',
                fun: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
