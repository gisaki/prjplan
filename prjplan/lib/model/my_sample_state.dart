import 'package:freezed_annotation/freezed_annotation.dart';

//自動生成されるファイル名を指定する。
part 'my_sample_state.freezed.dart';

@freezed
class MySampleState with _$MySampleState {
  const factory MySampleState(String name, int age) = _MySampleState;
}
