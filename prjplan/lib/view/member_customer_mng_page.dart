import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:prjplan/view_model/project_item_notifier.dart';
import 'package:prjplan/view/input_dialog_widget.dart';

class MemberCustomerMngPage extends ConsumerWidget {
  const MemberCustomerMngPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('プロジェクト基本設定'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              _buttonArea(context),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      // 以下で ListView を使用しているので Expanded の中に入れる
                      child: _nameListArea(context, ref),
                    ),
                    Expanded(
                      child: _nameListArea(context, ref),
                    ),
                    Expanded(
                      child: _nameListArea(context, ref),
                    ),
                  ],
                ),
              ),
              _buttonArea(context),
            ],
          ),
        ));
  }
}

Widget _nameListArea(BuildContext context, WidgetRef ref) {
  final projectStateNotifier = ref.watch(projectStateProvider.notifier);
  final projectState = ref.watch(projectStateProvider);
  return Card(
      child: Column(
    children: <Widget>[
      Expanded(
        child: ListView.builder(
          itemCount: projectState.members.length,
          itemBuilder: (context, index) {
            return Text(projectState.members[index]);
          },
        ),
      ),
      Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // 上寄せ
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 均等なスペース
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: '追加',
              onPressed: () async {
                final result =
                    await DialogUtils.showEditingDialog(context, '追加する名前');
                final name = result ?? '';
                if (name.isNotEmpty) {
                  projectStateNotifier.addMember(name);
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: '更新',
              onPressed: () {
                projectStateNotifier.reloadMember();
              },
            ),
          ],
        ),
      ),
    ],
  ));
}

Widget _buttonArea(BuildContext context) {
  return Container(
      child: Row(
    crossAxisAlignment: CrossAxisAlignment.start, // 上寄せ
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 均等なスペース
    children: <Widget>[
      ElevatedButton(
        child: const Text('戻る'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  ));
}
