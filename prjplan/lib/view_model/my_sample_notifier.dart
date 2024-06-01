import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prjplan/model/my_sample_state.dart';

// Notifierの状態を管理する
final mysampleProvider =
    StateNotifierProvider.autoDispose<MySampleNotifier, MySampleState>(
  (ref) => MySampleNotifier(),
);

class MySampleNotifier extends StateNotifier<MySampleState> {
  MySampleNotifier() : super(const MySampleState('サンプル', 24));

  // 算出する
  void culculateSample() {
    state = state.copyWith(age: 10);
  }

  // 更新する
  void changeSample(int age) {
    state = state.copyWith(age: age);
  }
}
