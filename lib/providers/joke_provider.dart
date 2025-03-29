import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:fluttercook/model/joke.dart';

//Dioクライアント
final dioProvider = Provider((ref) => Dio());

//FutureProviderでジョーク取得
final jokeProvider = FutureProvider<Joke>((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get(
    'https://official-joke-api.appspot.com/jokes/random',
  );
  return Joke.fromJson(response.data);
});
