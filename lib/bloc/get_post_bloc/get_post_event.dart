import 'package:equatable/equatable.dart';

abstract class GetPostEvent extends Equatable {
  const GetPostEvent();
}

class GetPostLoadedEvent extends GetPostEvent {
  @override
  List<Object> get props => [];
}
