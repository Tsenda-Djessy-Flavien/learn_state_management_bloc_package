import 'package:flutter_bloc/flutter_bloc.dart';

// CounterBloc hérite de bloc
class CounterBloc extends Bloc<CounterEvent, int> {
  // CounterBloc est un contructeur et initialise l'état initial du bloc à '0'.
  CounterBloc() : super(0) {
    // la méthode 'on' est utilisée pour enregistrer des gestionnaires d'événements
    on<CounterEvent>((event, emit) {
      // Lorsque l'événement CounterEvent.increment est reçu
      if (event == CounterEvent.increment) {
        // l'état actuel du bloc est incrémenté de 1
        emit(state + 1);
        // Lorsque l'événement CounterEvent.decrement est reçu
      } else if (event == CounterEvent.decrement) {
        // l'état actuel du bloc est décrémenté de 1
        emit(state - 1);
      }
    });
  }
}

// les événements que le bloc peut recevoir
enum CounterEvent { increment, decrement }
