import 'package:couter_app/blocs/counter_bloc.dart';
import 'package:couter_app/events/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.read<CounterBloc>();
    return Center(
      child: BlocBuilder<CounterBloc,int>(
        builder: (context,counter){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  onPressed: (){
                    counterBloc.add(CounterEvent.increase);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(10.0)
                  ),
                  child: Text(
                    "Increase(+)",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ),
              Text("Result here: $counter"),
              TextButton(
                  onPressed: (){
                    counterBloc.add(CounterEvent.decrease);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      padding: EdgeInsets.all(10.0)
                  ),
                  child: Text(
                    "Decrease(+)",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ),
            ],
          );
        },
      ),
    );
  }
}
