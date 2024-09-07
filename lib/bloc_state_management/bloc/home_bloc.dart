import 'package:bloc/bloc.dart';
import 'package:first_flu_app/bloc_state_management/events/home_events.dart';
import 'package:first_flu_app/bloc_state_management/states/home_states.dart';

class HomeCubit extends Bloc<HomeEvent, HomeState> {
  HomeCubit() : super(HomeInitState()) {
    on<IncrementEvent>((event, emit) async {
      emit(HomeLoadingState());
      try {
        emit(HomeLoadingState());
        await Future.delayed(
            const Duration(
              seconds: 1,
            ),
            () => 'hussam');
        counter++;
        emit(HomeSuccessState(counterVal: counter));

        // throw 'something went wrong';
      } catch (e) {
        emit(
          HomeFailedState(
            errorMessage: e.toString(),
          ),
        );
      }
    });
  }
  var name = '';
  int counter = 0;
  void increment(String name) async {
    try {
      emit(HomeLoadingState());
      await Future.delayed(
          const Duration(
            seconds: 1,
          ),
          () => 'hussam');
      counter++;
      emit(HomeSuccessState(counterVal: counter));

      throw 'something went wrong';
    } catch (e) {
      emit(
        HomeFailedState(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  //example

  Future<void> login() async {
    try {
      // emit(HomeLoadingState());
      //call login service.
      var loginData = await Future.delayed(
          const Duration(
            seconds: 5,
          ),
          () => 'hussam');
      emit(HomeSuccessState(username: loginData));
    } catch (e) {
      emit(
        HomeFailedState(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
