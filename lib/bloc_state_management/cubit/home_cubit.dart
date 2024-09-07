import 'package:bloc/bloc.dart';
import 'package:first_flu_app/bloc_state_management/states/home_states.dart';
import 'package:first_flu_app/getx_home_screen.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitState());

  int counter = 0;
  void increment() async {
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
