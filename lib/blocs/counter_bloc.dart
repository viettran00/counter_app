
import 'package:couter_app/events/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    // TODO: implement mapEventToState
    switch(event){
      case CounterEvent.increase:
        emit(state + 1);
        print("increase");
        break;
      case CounterEvent.decrease:
        emit(state - 1);
        print("decrease");
        break;
    }
  }

}