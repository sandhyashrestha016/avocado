// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import '../../model/get_post_model.dart';
import '../../repository/post_repository.dart';
import 'get_post_event.dart';
import 'get_post_state.dart';

class GetPostBloc extends Bloc<GetPostEvent, GetPostState> {
  PostListRepostitory postRepository;
  GetPostBloc({required this.postRepository}) : super(GetPostInitialState()) {
    on((event, emit) async {
      if (event is GetPostLoadedEvent) {
        emit(GetPostLoadingState());

        try {
          List<GetPost> data = await postRepository.getPostReport();
          emit(GetPostLoadedState(data: data));
        } catch (e) {
          emit(GetPostErrorState(error: e.toString()));
        }
      }
    });
  }
}
