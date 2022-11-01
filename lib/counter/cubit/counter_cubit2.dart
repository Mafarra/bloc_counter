import 'package:bloc/bloc.dart';

class CounterCubit2 extends Cubit<int> {
  //CounterCubit2(super.initialState); //this line  and the next line are the same
  CounterCubit2() : super(2);
  void dublicate() => emit(state * 2);
  // in this app we use on change method in blocOpserver class
  //  @override
  // void onChange(Change<int> change) {
  //   super.onChange(change);
  //   print('$change');
  // }
  
}
