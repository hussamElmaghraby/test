class HomeState {}

class HomeInitState extends HomeState {}

class HomeSuccessState extends HomeState {
  String? username;
  int? counterVal;

  HomeSuccessState({this.username, this.counterVal});
}

class HomeFailedState extends HomeState {
  String? errorMessage;
  HomeFailedState({
    this.errorMessage,
  });
}

class HomeLoadingState extends HomeState {}
