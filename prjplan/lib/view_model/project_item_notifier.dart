import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prjplan/model/project_item_state.dart';
import 'package:prjplan/model/project_item_db.dart';

// Notifierの状態を管理する
final projectStateProvider =
    StateNotifierProvider.autoDispose<ProjectStateNotifier, ProjectState>(
  (ref) => ProjectStateNotifier(),
);

class ProjectStateNotifier extends StateNotifier<ProjectState> {
  ProjectStateNotifier() : super(const ProjectState([], [], ['Aさん', 'Bさん']));

  // 算出する
  void addMember(String newMember) {
    final oldMembers = state.members;
    state = state.copyWith(members: [...oldMembers, newMember]);
  }

  // 更新する
  void reloadMember() async {
    ProjectItemDb db = ProjectItemDb();
    List<Task> newTasks = await db.readTasks();
    state = state.copyWith(tasks: newTasks);

    // メンバを算出しなおす
    List<String> newMembers = [];
    for (var item in state.tasks) {
      newMembers.add(item.member);
    }
    state = state.copyWith(members: newMembers);
  }

  // 更新する
  void changeSample(int age) {}
}
