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

/// プロジェクトを示すクラス
///
///プロジェクトは顧客ごとに期間と売り上げを管理するクラスである。
/// [projectId] は他と同じ値を指定することが可能である。その場合同じプロジェクトで複数に分かれて売り上げがあったことを示す。
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

/// タスクを示すクラス
///
/// タスクはメンバがどのプロジェクトにどの程度の工数（費用）を投入したかを示すクラスである。
/// [projectId] で計上する対象のプロジェクトと関連付けられる。
@freezed
class Task with _$Task {
  const factory Task(String projectId, String member,
      @DateTimeConverter() DateTime month, double mm) = _Task;
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
  // 仮
  List<String> calcMembers() {
    return members;
  }
}
