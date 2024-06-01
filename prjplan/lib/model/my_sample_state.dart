import 'package:freezed_annotation/freezed_annotation.dart';

//自動生成されるファイル名を指定する。
part 'my_sample_state.freezed.dart';

// 以下、コマンド
// $ flutter pub run build_runner build --delete-conflicting-outputs
// Deprecated. Use `dart run` instead.
// ということで、下記にする
// $ dart run build_runner build --delete-conflicting-outputs

@freezed
class MySampleState with _$MySampleState {
  const factory MySampleState(String name, int age) = _MySampleState;
}
