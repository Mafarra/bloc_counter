import 'package:bloc_counter/counter/cubit/counter_cubit2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // BlocBuilder<CounterCubit, int>(builder: ((context, state) {
            //   return Text(
            //     '$state',
            //     style: textTheme.headline2,
            //   );
            // })),
            BlocBuilder<CounterCubit2, int>(builder: ((context, state) {
              return Text(
                '$state',
                style: textTheme.headline2!.copyWith(color: Colors.red),
              );
            })),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          // FloatingActionButton(
          //   key: const Key('counterView_increment_floatingActionButton'),
          //   child: const Icon(Icons.add),
          //   onPressed: () => context.read<CounterCubit>().increment(),
          // ),
          // const SizedBox(
          //   height: 8,
          // ),
          // FloatingActionButton(
          //     key: const Key('CounterView_decrement_floatingActionButton'),
          //     child: const Icon(Icons.remove),
          //     onPressed: () => context.read<CounterCubit>().decrement()),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
              key: const Key('CounterView_dublicate_floatingActionButton'),
              child: const Icon(Icons.star_purple500),
              onPressed: () => context.read<CounterCubit2>().dublicate()),
        ],
      ),
    );
  }
}
