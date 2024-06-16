import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart'; // for compute

import 'package:prjplan/model/project_item_state.dart';
import 'package:prjplan/model/project_item_db.dart';

// Notifierの状態を管理する
final projectStateProvider =
    StateNotifierProvider.autoDispose<ProjectStateNotifier, ProjectState>(
  (ref) => ProjectStateNotifier(),
);

class ProjectStateNotifier extends StateNotifier<ProjectState> {
  ProjectStateNotifier()
      : super(const ProjectState(
            [],
            [],
            ['Aさん', 'Bさん'],
            ['C社', 'DDD社'],
            ViewTable([], [], [
              [
                "1行-1列",
                "1行-2列",
              ],
            ], [
              [0, 0]
            ])));

  // 追加する
  void addMember(String newMember) {
    final oldMembers = state.members;
    state = state.copyWith(members: [...oldMembers, newMember]);
  }

  void addCustomer(String newCustomer) {
    final oldCustomers = state.customers;
    state = state.copyWith(customers: [...oldCustomers, newCustomer]);
  }

  // サーバのデータと同期する
  Future<void> _reload() async {
    ProjectItemDb db = ProjectItemDb();
    List<Task> newTasks = await db.readTasks();
    state = state.copyWith(tasks: newTasks);
    List<Business> newBusinesses = await db.readBusinesses();
    state = state.copyWith(businesses: newBusinesses);
  }

  // 算出しなおす
  void _calcMembers(bool refresh) {
    List<String> newMembers = (refresh) ? [] : [...state.members];
    for (var item in state.tasks) {
      if (!newMembers.contains(item.member)) {
        newMembers.add(item.member);
      }
    }
    state = state.copyWith(members: newMembers);
  }

  void _calcCustomers(bool refresh) {
    List<String> newCustomers = (refresh) ? [] : [...state.customers];
    for (var item in state.businesses) {
      if (!newCustomers.contains(item.customer)) {
        newCustomers.add(item.customer);
      }
    }
    state = state.copyWith(customers: newCustomers);
  }

  // 追加を取り消す
  Future<void> reloadMember() async {
    // サーバのデータと同期する
    await _reload();
    // 新しく作り直す
    _calcMembers(true);
  }

  Future<void> reloadCustomer() async {
    // サーバのデータと同期する
    await _reload();
    // 新しく作り直す
    _calcCustomers(true);
  }

  // 一覧を更新する
  Future<void> calcViewTable(String customer) async {
    // サーバのデータと同期する
    await _reload();
    _calcMembers(false);
    _calcCustomers(false);
    // テーブルを作り直し
    final newViewTable = state.calcViewTable(customer, DateTime.now());
    state = state.copyWith(viewTable: newViewTable);
  }
}
