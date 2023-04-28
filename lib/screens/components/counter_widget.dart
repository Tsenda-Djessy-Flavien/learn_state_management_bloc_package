import 'package:blocproject/stores/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  //----------- 1ère méthode ---------------

  // @override
  // Widget build(BuildContext context) {
  //   // récupère une instance de 'CounterBloc' en utilisant 'context.watch'.
  //   // récupérer l'état du bloc et réagir aux changements d'état en temps réel.
  //   final counterBloc = context.watch<CounterBloc>();

  //   return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         // pour afficher la valeur actuelle du compteur
  //         Text('Counter value : ${counterBloc.state}'),
  //         const SizedBox(height: 16),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             FloatingActionButton(
  //               onPressed: () => counterBloc.add(CounterEvent.increment),
  //               child: const Icon(Icons.add),
  //             ),
  //             const SizedBox(width: 16),
  //             FloatingActionButton(
  //               onPressed: () => counterBloc.add(CounterEvent.decrement),
  //               child: const Icon(Icons.remove),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

  //----------- 2e méthode ---------------

  @override
  Widget build(BuildContext context) {
    // BlocBuilder : récupérer l'état du bloc et de réagir aux changements d'état
    return BlocBuilder<CounterBloc, int>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter value : $state'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    // context.read : pour récupérer l'instance du CounterBloc à partir du contexte
                    onPressed: () =>
                        context.read<CounterBloc>().add(CounterEvent.increment),
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    // context.read : pour récupérer l'instance du CounterBloc à partir du contexte
                    onPressed: () =>
                        context.read<CounterBloc>().add(CounterEvent.decrement),
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
