import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prjplan/view_model/my_sample_notifier.dart';
import 'package:prjplan/view/second_page.dart';

class FirstPage extends ConsumerWidget {
  const FirstPage({super.key});

  // テキスト入力可能なダイアログ
  Future<void> myInputDialog(BuildContext context, WidgetRef ref) async {
    final mysampleNotifier = ref.watch(mysampleProvider.notifier);
    // final mysampleState = ref.watch(mysampleProvider); // 未使用

    // 非同期処理にする
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('タイトル'),
            content: const TextField(
              decoration: InputDecoration(hintText: "ここに入力"),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('キャンセル'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                child: const Text('OK'),
                onPressed: () {
                  // modelを更新する
                  mysampleNotifier.changeSample(40);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final mysampleNotifier = ref.watch(mysampleProvider.notifier); // 未使用
    final mysampleState = ref.watch(mysampleProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Text("${mysampleState.name}さん、${mysampleState.age}歳"),
            ElevatedButton(
              child: const Text('年齢を変更する'),
              onPressed: () {
                // 上で作成した テキスト入力可能なダイアログ を表示させる
                myInputDialog(context, ref);
              },
            ),
            ElevatedButton(
              child: const Text('次のページへ'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
