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
                      child: _memberListArea(context, ref),
                    ),
                    Expanded(
                      child: _customerListArea(context, ref),
                    ),
                    Expanded(
                      child: _memberListArea(context, ref),
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

Widget _memberListArea(BuildContext context, WidgetRef ref) {
  final projectStateNotifier = ref.watch(projectStateProvider.notifier);
  final projectState = ref.watch(projectStateProvider);
  return Card(
      child: Column(
    children: <Widget>[
      Expanded(
        child: ListView.builder(
          itemCount: projectState.members.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(projectState.members[index]),
              leading: const Icon(Icons.person),
            );
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
                final addStr = result ?? '';
                if (addStr.isNotEmpty) {
                  projectStateNotifier.addMember(addStr);
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: '追加を取り消す',
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

Widget _customerListArea(BuildContext context, WidgetRef ref) {
  final projectStateNotifier = ref.watch(projectStateProvider.notifier);
  final projectState = ref.watch(projectStateProvider);
  return Card(
      child: Column(
    children: <Widget>[
      Expanded(
        child: ListView.builder(
          itemCount: projectState.customers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(projectState.customers[index]),
              leading: const Icon(Icons.business),
            );
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
                    await DialogUtils.showEditingDialog(context, '追加する会社名');
                final addStr = result ?? '';
                if (addStr.isNotEmpty) {
                  projectStateNotifier.addCustomer(addStr);
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: '追加を取り消す',
              onPressed: () {
                projectStateNotifier.reloadCustomer();
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
