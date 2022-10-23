// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  //BlocObserver will help us observe all state changes in the application.
  //In this case, we're only overriding onChange to see all state changes that occur.
  //Note: onChange works the same way for both Bloc and Cubit instances.
  @override
  void onChange(BlocBase bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
