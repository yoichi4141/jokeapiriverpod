import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercook/providers/joke_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: JokeScreen());
  }
}

class JokeScreen extends ConsumerWidget {
  const JokeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jokeAsync = ref.watch(jokeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('💩ジョーク with Riverpod')),
      body: jokeAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error:
            (err, _) =>
                Center(child: Text('ohhhhhh!!!shiiiit!!!!!!error!!!!!!!!')),
        data:
            (joke) => Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    joke.setup,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    joke.punchline,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => ref.refresh(jokeProvider),
                    child: const Text('もっと💩'),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
