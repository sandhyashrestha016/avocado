// ignore_for_file: unused_field

import 'package:avocado/bloc/get_post_bloc/get_post_bloc.dart';
import 'package:avocado/bloc/get_post_bloc/get_post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../helper/color_constants.dart';

class GetApiPage extends StatefulWidget {
  const GetApiPage({super.key});

  @override
  State<GetApiPage> createState() => _GetApiPageState();
}

class _GetApiPageState extends State<GetApiPage> {
  late GetPostBloc _postBloc;
  @override
  void initState() {
    super.initState();
    _postBloc = BlocProvider.of<GetPostBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FigmaColors.primaryColor,
        title: const Text("Get API"),
        centerTitle: true,
      ),
      body: BlocListener<GetPostBloc, GetPostState>(
          listener: (context, state) {},
          child: BlocBuilder<GetPostBloc, GetPostState>(
            builder: (context, state) {
              if (state is GetPostLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is GetPostErrorState) {
                return const Center(
                  child: Text("Something went wrong"),
                );
              }
              if (state is GetPostLoadedState) {
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                  padding: const EdgeInsets.all(11),
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black),
                      ),
                      tileColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Title: ${state.data[index].name.toString()}",
                                style: const FigmaTextStyles().baseBold,
                              ),
                              Text(
                                "ID: ${state.data[index].id.toString()}",
                                style: const FigmaTextStyles()
                                    .baseBold
                                    .copyWith(color: FigmaColors.primaryColor),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.email,
                                size: 17,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(state.data[index].email.toString(),
                                  style: const FigmaTextStyles().baseRegular),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.info_sharp,
                                size: 17,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: size.width * 0.75,
                                child: Text(
                                  state.data[index].body.toString(),
                                  style: const FigmaTextStyles().baseRegular,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
              return Container();
            },
          )),
    );
  }
}
