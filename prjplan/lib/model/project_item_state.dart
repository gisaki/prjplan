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

/// 月ごとに工数を細分化したプロジェクト
///
@freezed
class BusinessDetail with _$BusinessDetail {
  const factory BusinessDetail(
      Business business, Map<DateTime, double> detail) = _BusinessDetail;
}

/// 月ごとに工数を集計した人員アサイン
///
@freezed
class MemberDetail with _$MemberDetail {
  const factory MemberDetail(
      List<Task> filterdTasks, Map<DateTime, double> detail) = _MemberDetail;
}

/// プロジェクトの集計
///
@freezed
class ViewTable with _$ViewTable {
  static const int _numOfTitles = 3; // タイトル行の行数、先頭行と、途中と、末尾に年月を表示するので合計3つ
  static const int _numOfCaptions = 2; // 表題の数、先頭にプロジェクト名 or メンバ名、次に売り上げで合計2つ
  const factory ViewTable(
    List<BusinessDetail> businessDetails, // 月ごとに工数を細分化したプロジェクト
    List<MemberDetail> memberDetails, // 月ごとに工数を集計した人員アサイン
    List<List<String>> captions, // 表示用データ（工数）
    List<List<double>> mms, // 表示用データ（工数）
  ) = _ViewTable;
}

@freezed
abstract class ProjectState implements _$ProjectState {
  // 独自 methods を追加するため、abstract にして withではなくimplementsを利用する
  const ProjectState._(); // 独自 method を追加するため、privateのコンストラクタを追加する
  const factory ProjectState(
      List<Business> businesses,
      List<Task> tasks,
      List<String> members,
      List<String> customers,
      ViewTable viewTable) = _ProjectState;

  // methods

  Map<DateTime, double> _emptyDetail(DateTime first) {
    Map<DateTime, double> ret = {};
    for (var i = 0; i <= 12; i++) {
      final DateTime m = DateTime(first.year, first.month + i, 0);
      ret[m] = 0.0;
    }
    return ret;
  }

  /// 指定した [filterCustomer] のみで集計する
  /// 集計した結果を返却する
  ViewTable calcViewTable(String filterCustomer, DateTime first) {
    final filteredBusinessByCustomer =
        businesses.where((business) => business.customer == filterCustomer);
    final filteredTasksByProjectId = tasks.where((task) => {
          filteredBusinessByCustomer.where((business) {
            return business.projectId == task.projectId;
          })
        }.isNotEmpty);

    // 月ごとに工数を集計した人員アサイン
    List<MemberDetail> memberDetails = [];
    {
      for (var member in members) {
        List<Task> filterdTasks = filteredTasksByProjectId
            .where((task) => task.member == member)
            .toList();
        Map<DateTime, double> detail = _emptyDetail(first);
        final MemberDetail memberDetail = MemberDetail(filterdTasks, detail);
        memberDetails.add(memberDetail);
      }
    }

    // 月ごとに工数を細分化したプロジェクト
    List<BusinessDetail> businessDetails = [];
    {
      for (var business in filteredBusinessByCustomer) {
        final Map<DateTime, double> detail = _emptyDetail(first);
        final BusinessDetail businessDetail = BusinessDetail(business, detail);
        businessDetails.add(businessDetail);
      }
    }

    // captions
    final int numOfLines =
        memberDetails.length + businessDetails.length + ViewTable._numOfTitles;
    const int numOfItemsInLine = 12 + ViewTable._numOfCaptions;
    var captions =
        List.generate(numOfLines, (i) => List.filled(numOfItemsInLine, ""));
    {
      const titleIdx1 = 0;
      final titleIdx2 = titleIdx1 + memberDetails.length + 1;
      final titleIdx3 = titleIdx2 + businessDetails.length + 1;
      captions[titleIdx1][0] = "名称";
      captions[titleIdx1][1] = "売上";
      for (var i = 0; i < 12; i++) {
        final int m = (first.month + 12 - 1 + i) % 12 + 1;
        captions[titleIdx1][i + ViewTable._numOfCaptions] = "$m月";
        captions[titleIdx2][i + ViewTable._numOfCaptions] = "$m月";
        captions[titleIdx3][i + ViewTable._numOfCaptions] = "$m月";
      }
    }

    // mms
    var mms =
        List.generate(numOfLines, (i) => List.filled(numOfItemsInLine, 0.0));

    // ViewTable
    final viewTable = ViewTable(businessDetails, memberDetails, captions, mms);

    return viewTable;
  }
}
