import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';
import 'dart:ui';

import 'package:prjplan/view_model/project_item_notifier.dart';
import 'package:prjplan/view/second_page.dart';
import 'package:prjplan/view/member_customer_mng_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('メイン'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: _drawerArea(context, ref),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: _table(context, ref),
              ),
              _buttonArea(context),
            ],
          ),
        ));
  }
}

Widget _drawerArea(BuildContext context, WidgetRef ref) {
  final projectStateNotifier = ref.watch(projectStateProvider.notifier);
  final projectState = ref.watch(projectStateProvider);
  return Drawer(
    child: ListView(children: [
      // それ以外の要素
      const ListTile(
        subtitle: Text('選択'),
      ),
      // 配列の要素
      ...projectState.customers.expand((e) => [
            ListTile(
              title: Text(e),
              leading: const Icon(Icons.business),
              onTap: () {
                // drawer を閉じる
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
            ),
          ]),
      // それ以外の要素
      const ListTile(
        subtitle: Text('設定'),
      ),
      ListTile(
        title: const Text('メンバ/顧客追加'),
        trailing: IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.of(context)
                .push(
              MaterialPageRoute(
                builder: (context) => const MemberCustomerMngPage(),
              ),
            )
                .then((val) {
              // 画面遷移から戻ってきたら drawer は閉じている状態にしたいので
              Navigator.pop(context);
            });
          },
        ),
      ),
    ]),
  );
}

Widget _buttonArea(BuildContext context) {
  return Container(
      child: Row(
    crossAxisAlignment: CrossAxisAlignment.start, // 上寄せ
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 均等なスペース
    children: <Widget>[
      ElevatedButton(
        child: const Text('メンバ/顧客追加'),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const MemberCustomerMngPage(),
            ),
          );
        },
      ),
      ElevatedButton(
        child: const Text('dummy'),
        onPressed: () {
          // TODO
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
  ));
}

class MyScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

Widget _table(BuildContext context, WidgetRef ref) {
  return ScrollConfiguration(
      behavior: MyScrollBehavior(),
      child: TableView.builder(
        cellBuilder: _buildCell,
        columnCount: 20,
        columnBuilder: _buildTableSpan,
        rowCount: 10,
        rowBuilder: _buildTableSpan,
        pinnedRowCount: 1,
        pinnedColumnCount: 1,
      ));
}

TableViewCell _buildCell(BuildContext context, TableVicinity vicinity) {
  return TableViewCell(
      child: Center(
    child: Text('c: ${vicinity.column}, r: ${vicinity.row}'),
  ));
}

TableSpan _buildTableSpan(int index) {
  return const TableSpan(extent: FixedTableSpanExtent(50));
}
