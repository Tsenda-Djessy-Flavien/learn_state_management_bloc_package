import 'package:blocproject/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn BlocC: Counter exemple'),
      ),
      // BlocProvider : pour fournir une instance de notre bloc "CounterBloc"
      body: BlocProvider(
        create: (_) => CounterBloc(),
        // CounterWidget : afficher la valeur actuelle du counter
        child: const CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // récupère une instance de 'CounterBloc' en utilisant 'context.watch'.
    final counterBloc = context.watch<CounterBloc>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // pour afficher la valeur actuelle du compteur
          Text('Counter value : ${counterBloc.state}'),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => counterBloc.add(CounterEvent.increment),
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () => counterBloc.add(CounterEvent.decrement),
                child: const Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}
