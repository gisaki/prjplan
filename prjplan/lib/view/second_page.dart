import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:prjplan/view_model/project_item_notifier.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectStateNotifier = ref.watch(projectStateProvider.notifier);
    final projectState = ref.watch(projectStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Text("members: ${projectState.members.length} 人"),
            Text("customers: ${projectState.customers.length} 社"),
          ],
        ),
      ),
    );
  }
}
