import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  /// Function Cubits
  void teamIncrement({required String team, required int buttonsNumber}) {
    if (team == "A") {
      teamAPoints += buttonsNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonsNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetCounters() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
