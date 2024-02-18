import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Cubit<CounterState>{
  //CounterBloc(super.initialState);
  CounterBloc():super(InitialState());
  int counter =0;
  void incrementCounter(){

    counter++;
    print(counter);
    emit(IncrementState());
}
  void decrementCounter(){
    counter--;
    print(counter);

    emit(DecrementState());
  }

}

/// states
abstract class CounterState{}
class InitialState extends CounterState{}
class IncrementState extends CounterState{}
class DecrementState extends CounterState{}
