import 'package:animate_do/animate_do.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:block_count/Ui/auth/login.dart';
import 'package:block_count/bloc/Counter/counter_bloc.dart';
import 'package:block_count/bloc/Counter/counter_event.dart';
import 'package:block_count/bloc/Counter/counter_states.dart';
import 'package:block_count/main.dart';
import 'package:block_count/utils/custom_Button.dart';
import 'package:block_count/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:typewritertext/typewritertext.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: SelectableText(
      //     'Example',
      //     style: TextStyle(fontSize: 15, color: Colors.white),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.blue,
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images.backgif), fit: BoxFit.cover)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            6.h.height,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TypeWriter.text(
                "Flutter Bloc Counter App \n 🤔☺️☺️",
                maintainSize: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                duration: Duration(milliseconds: 100),
              ),
            ),
            6.h.height,
            Container(
              height: 100,
              // color: Colors.amber,
              child: BlocBuilder<CounterBloc, CounterStates>(
                builder: (context, state) {
                  return AnimatedFlipCounter(
                    value: state.count,
                    fractionDigits: 0,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                    wholeDigits: 8,
                    hideLeadingZeroes: true,
                    thousandSeparator: ',',
                  );
                  // Text(
                  //   state.count.toString(),
                  //   style: TextStyle(
                  //       fontSize: 40,
                  //       fontWeight: FontWeight.w600,
                  //       color: Colors.white),
                  // );
                },
              ),
            ),
            5.h.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 35.w,
                  child: FadeInLeft(
                    child: RoundButton(
                      title: 'Increment',
                      fun: () {
                        context.read<CounterBloc>().add(Increment());
                      },
                    ),
                  ),
                ),
                10.w.width,
                SizedBox(
                  width: 35.w,
                  child: FadeInUp(
                    child: RoundButton(
                      title: 'Decrement',
                      fun: () {
                        context.read<CounterBloc>().add(decrement());
                      },
                    ),
                  ),
                )
              ],
            ),
            50.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: FadeInRight(
                child: RoundButton(
                  title: 'Login User',
                  fun: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
