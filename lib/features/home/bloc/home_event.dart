class HomeEvent {}

class LoadMoreHomeEvent extends HomeEvent {
  final int lastShowedId;

  LoadMoreHomeEvent({this.lastShowedId = 0});
}