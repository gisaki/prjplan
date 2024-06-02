import 'package:freezed_annotation/freezed_annotation.dart';

//自動生成されるファイル名を指定する。
part 'project_item_state.freezed.dart'; // freezed 用
part 'project_item_state.g.dart'; // fromJson 用

// 以下、コマンド
// $ flutter pub run build_runner build --delete-conflicting-outputs
// Deprecated. Use `dart run` instead.
// ということで、下記にする
// $ dart run build_runner build --delete-conflicting-outputs

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime.toLocal().toString();
  }
}

@freezed
class Business with _$Business {
  const factory Business(
      String projectId,
      String customer,
      @DateTimeConverter() DateTime start,
      @DateTimeConverter() DateTime end,
      double earn) = _Business;
  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}

@freezed
class Task with _$Task {
  const factory Task(
      String projectId, String member, DateTime month, double mm) = _Task;
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
abstract class ProjectState implements _$ProjectState {
  // 独自 methods を追加するため、abstract にして withではなくimplementsを利用する
  const ProjectState._(); // 独自 method を追加するため、privateのコンストラクタを追加する
  const factory ProjectState(
          List<Business> businesses, List<Task> tasks, List<String> members) =
      _ProjectState;

  // methods
  List<String> calcMembers() {
    return members;
  }
}
