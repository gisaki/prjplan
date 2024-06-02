import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prjplan/view_model/project_item_notifier.dart';
import 'package:prjplan/view/second_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectStateNotifier = ref.watch(projectStateProvider.notifier);
    final projectState = ref.watch(projectStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('プロジェクトページ'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              // Flexibleでラップ。Column の中で ListView を使う場合に、ListViewの大きさが定まらず EXCEPTION になるため
              child: ListView.builder(
                itemCount: projectState.members.length,
                itemBuilder: (context, index) {
                  return Text(projectState.members[index]);
                },
              ),
            ),
            ElevatedButton(
              child: const Text('名前を増やす'),
              onPressed: () {
                projectStateNotifier.addMember('サンプル');
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
