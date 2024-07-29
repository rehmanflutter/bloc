import 'package:block_count/Ui/counter.dart';
import 'package:block_count/bloc/Counter/counter_bloc.dart';
import 'package:block_count/bloc/sigup_bloc/sigup_blocs.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

extension View on num {
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => CounterBloc()),
          BlocProvider(create: (_) => SwitchBloc()),
          BlocProvider(create: (_) => SigupBlocs()),
          // BlocProvider(create: (_) => SwitchBloc()),
          // BlocProvider(create: (_) => SwitchBloc())
          // BlocProvider(create: (_) => SwitchBloc())
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: CounterScreen()),
      );
    });
  }
}
