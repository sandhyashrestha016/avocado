import 'package:avocado/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/get_post_bloc/get_post_bloc.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider<GetPostBloc>(
        create: (context) => GetPostBloc(postRepository: PostRepository()),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avocado',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Avocado Technology'),
    );
  }
}
