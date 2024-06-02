import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prjplan/model/project_item_state.dart';

// Notifierの状態を管理する
final projectStateProvider =
    StateNotifierProvider.autoDispose<ProjectStateNotifier, ProjectState>(
  (ref) => ProjectStateNotifier(),
);

class ProjectStateNotifier extends StateNotifier<ProjectState> {
  ProjectStateNotifier() : super(const ProjectState([], [], ['Aさん', 'Bさん']));

  // 算出する
  void addMember(String newMember) {
    final oldMembers = state.calcMembers();
    state = state.copyWith(members: [...oldMembers, newMember]);
  }

  // 更新する
  void changeSample(int age) {}
}
