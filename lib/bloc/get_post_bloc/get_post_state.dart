import 'package:avocado/model/get_post_model.dart';
import 'package:equatable/equatable.dart';

abstract class GetPostState extends Equatable {
  const GetPostState();
}

class GetPostInitialState extends GetPostState {
  @override
  List<Object> get props => [];
}

class GetPostLoadingState extends GetPostState {
  @override
  List<Object> get props => [];
}

class GetPostLoadedState extends GetPostState {
  final List<GetPost> data;

  const GetPostLoadedState({required this.data});

  @override
  List<Object> get props => [];
}

class GetPostErrorState extends GetPostState {
  final String error;

  const GetPostErrorState({required this.error});

  @override
  List<Object> get props => [];
}
