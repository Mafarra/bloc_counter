import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  //add 1 to the current state.
  void increment() => emit(state + 1);
  //subtract 1 from the current state.
  void decrement() => emit(state - 1);
  //dublicate the current state.
  void dublicate() => emit(state * 2);
  // in this app we use on change method in blocOpserver class
  //  @override
  // void onChange(Change<int> change) {
  //   super.onChange(change);
  //   print('CounterCubitChange: $change');
  // }
}
