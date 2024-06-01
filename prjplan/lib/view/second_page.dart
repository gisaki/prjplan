import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prjplan/view_model/my_sample_notifier.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final mysampleNotifier = ref.watch(mysampleProvider.notifier); // 未使用
    final mysampleState = ref.watch(mysampleProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Text("${mysampleState.name}さん"),
            Text("${mysampleState.age}歳"),
          ],
        ),
      ),
    );
  }
}
