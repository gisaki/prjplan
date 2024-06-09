import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        body: Center(
          child: Column(
            children: <Widget>[
              _buttonArea(context),
              // TODO
              _buttonArea(context),
            ],
          ),
        ));
  }
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
