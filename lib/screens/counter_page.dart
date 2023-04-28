import 'package:blocproject/screens/components/counter_widget.dart';
import 'package:blocproject/stores/counter_bloc.dart';
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
