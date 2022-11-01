import 'package:bloc_counter/counter/cubit/counter_cubit2.dart';
import 'package:bloc_counter/counter/view/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});
  @override
  Widget build(BuildContext context) {
    // Note: It's important to separate or decouple the creation of a Cubit
    // from the consumption of a Cubit in order to
    // have code that is much more testable and reusable.
    return MultiBlocProvider(
      // create: (_) => CounterCubit(),
      providers: [
        BlocProvider(
          create: (_) => CounterCubit(),
          child: const CounterView(),
        ),
        BlocProvider(
          create: (_) => CounterCubit2(),
          child: const CounterView(),
        ),
      ],
      child: const CounterView(),
    );
  }
}
