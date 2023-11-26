import 'package:bloc_counter_app/blocs/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Counter Value'),
                Text(
                  state.count.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CounterBloc>(context)
                            .add(DecrementCounterEvent());
                      },
                      child: const Text('Decrement'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CounterBloc>(context)
                            .add(IncrementCounterEvent());
                      },
                      child: const Text('Increment'),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
