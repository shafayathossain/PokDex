class HomeEvent {}

class InitialLoadEvent extends HomeEvent {}

class LoadMoreHomeEvent extends HomeEvent {
  final int lastShowedId;

  LoadMoreHomeEvent({this.lastShowedId = 0});
}
