import 'package:block_count/bloc/Counter/counter_bloc.dart';
import 'package:block_count/bloc/Counter/counter_event.dart';
import 'package:block_count/bloc/Counter/counter_states.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_bloc.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_event.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_status.dart';
import 'package:block_count/main.dart';
import 'package:block_count/utils/images.dart';
import 'package:block_count/utils/textCustam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.h.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(Images.Button)),
                Textcustam(
                  text: 'Filters',
                  weight: FontWeight.w700,
                  size: 18,
                ),
                SizedBox(),
              ],
            ),
            16.height,
            Row(
              children: [
                Textcustam(
                  text: 'Price Range',
                  size: 17,
                  weight: FontWeight.w600,
                ),
                // BlocBuilder<SwitchBloc, Switchstatus>(
                //     builder: (context, state) =>
                //         Textcustam(text: '${state.sildervalue}'))
              ],
            ),
            BlocBuilder<SwitchBloc, Switchstatus>(
              builder: (context, state) {
                return Slider(
                  activeColor: appcolour,
                  value: state.sildervalue,
                  onChanged: (valuess) {
                    context
                        .read<SwitchBloc>()
                        .add(SilidersEvents(value: valuess));
                  },
                );
              },
            ),
            3.h.height,
            Textcustam(
              text: 'Features',
              size: 18,
              weight: FontWeight.w600,
            ),
            10.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Textcustam(
                  text: 'Beds',
                  size: 16,
                ),
                BlocBuilder<CounterBloc, CounterStates>(
                    builder: (context, state) => Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  context.read<CounterBloc>().add(decrement());
                                },
                                child: SvgPicture.asset('images/minus.svg')),
                            10.width,
                            Textcustam(
                              text: '${state.count}',
                              size: 16,
                              weight: FontWeight.w700,
                            ),
                            10.width,
                            GestureDetector(
                              onTap: () {
                                context.read<CounterBloc>().add(Increment());
                              },
                              child: Icon(
                                Icons.add_circle,
                                color: appcolour,
                              ),
                            )
                          ],
                        ))
              ],
            ),
            15.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Textcustam(
                  text: 'Baths',
                  size: 16,
                ),
                Row(
                  children: [
                    SvgPicture.asset('images/minus.svg'),
                    10.width,
                    Textcustam(
                      text: '4',
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                    10.width,
                    Icon(
                      Icons.add_circle,
                      color: appcolour,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
