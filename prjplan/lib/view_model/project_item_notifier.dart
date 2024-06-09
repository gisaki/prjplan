import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prjplan/model/project_item_state.dart';
import 'package:prjplan/model/project_item_db.dart';

// Notifierの状態を管理する
final projectStateProvider =
    StateNotifierProvider.autoDispose<ProjectStateNotifier, ProjectState>(
  (ref) => ProjectStateNotifier(),
);

class ProjectStateNotifier extends StateNotifier<ProjectState> {
  ProjectStateNotifier()
      : super(const ProjectState([], [], ['Aさん', 'Bさん'], ['C社', 'DDD社']));

  // 追加する
  void addMember(String newMember) {
    final oldMembers = state.members;
    state = state.copyWith(members: [...oldMembers, newMember]);
  }

  void addCustomer(String newCustomer) {
    final oldCustomers = state.customers;
    state = state.copyWith(customers: [...oldCustomers, newCustomer]);
  }

  // 更新する
  void reloadMember() async {
    ProjectItemDb db = ProjectItemDb();
    List<Task> newTasks = await db.readTasks();
    state = state.copyWith(tasks: newTasks);

    // メンバを算出しなおす
    List<String> newMembers = [];
    for (var item in state.tasks) {
      if (!newMembers.contains(item.member)) {
        newMembers.add(item.member);
      }
    }
    state = state.copyWith(members: newMembers);
  }

  void reloadCustomer() async {
    ProjectItemDb db = ProjectItemDb();
    List<Business> newBusinesses = await db.readBusinesses();
    state = state.copyWith(businesses: newBusinesses);

    // 会社を算出しなおす
    List<String> newCustomers = [];
    for (var item in state.businesses) {
      if (!newCustomers.contains(item.customer)) {
        newCustomers.add(item.customer);
      }
    }
    state = state.copyWith(customers: newCustomers);
  }

  // 更新する
  void changeSample(int age) {}
}
