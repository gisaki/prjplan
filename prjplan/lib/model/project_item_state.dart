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
  const factory MemberDetail(String member, List<Task> filterdTasks,
      Map<DateTime, double> detail) = _MemberDetail;
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
    for (var iMonth = 0; iMonth < 12; iMonth++) {
      final DateTime month = DateTime(first.year, first.month + iMonth, 1);
      ret[month] = 0.0;
    }
    return ret;
  }

  /// 指定した [filterCustomer] のみで集計する
  /// 集計した結果を返却する
  ViewTable calcViewTable(String filterCustomer, DateTime first) {
    final filteredBusinessByCustomer =
        businesses.where((business) => business.customer == filterCustomer);
    List<Task> filteredTasksByProjectId = [];
    for (final task in tasks) {
      final businesses = filteredBusinessByCustomer
          .where((business) => business.projectId == task.projectId);
      if (businesses.isNotEmpty) {
        filteredTasksByProjectId.add(task);
      }
    }

    // 月ごとに工数を集計した人員アサイン
    List<MemberDetail> memberDetails = [];
    {
      for (var member in members) {
        final List<Task> filterdTasks = filteredTasksByProjectId
            .where((task) => task.member == member)
            .toList();
        final Map<DateTime, double> detail = _emptyDetail(first);

        // task の工数を集計
        for (var task in filterdTasks) {
          final serach = DateTime(task.month.year, task.month.month, 1);
          if (detail.containsKey(serach)) {
            try {
              detail[serach] = detail[serach]! + task.mm;
            } catch (e) {
              // あり得ないはずなので、変な値にしておく（不具合を見つけやすいように）
              detail[serach] = -99;
            }
          }
        }

        final memberDetail = MemberDetail(member, filterdTasks, detail);
        memberDetails.add(memberDetail);
      }
    }

    // 月ごとに工数を細分化したプロジェクト
    List<BusinessDetail> businessDetails = [];
    {
      for (var business in filteredBusinessByCustomer) {
        final Map<DateTime, double> detail = _emptyDetail(first);
        final businessDetail = BusinessDetail(business, detail);
        businessDetails.add(businessDetail);
      }
    }

    // 行数やタイトル行の位置等
    final int numOfLines =
        memberDetails.length + businessDetails.length + ViewTable._numOfTitles;
    const int numOfItemsInLine = 12 + ViewTable._numOfCaptions;
    const titleIdx1 = 0;
    final titleIdx2 = titleIdx1 + businessDetails.length + 1;
    final titleIdx3 = titleIdx2 + memberDetails.length + 1;

    // captions
    var captions =
        List.generate(numOfLines, (i) => List.filled(numOfItemsInLine, ""));
    {
      // 表題
      captions[titleIdx1][0] = "名称";
      captions[titleIdx1][1] = "売上";
      for (var i = 0; i < 12; i++) {
        final int m = (first.month + 12 - 1 + i) % 12 + 1;
        captions[titleIdx1][i + ViewTable._numOfCaptions] = "$m月";
        captions[titleIdx2][i + ViewTable._numOfCaptions] = "$m月";
        captions[titleIdx3][i + ViewTable._numOfCaptions] = "$m月";
      }
      // 中身
      businessDetails.asMap().forEach((int i, BusinessDetail b) {
        // 名称 = プロジェクトID
        captions[(titleIdx1 + 1) + i][0] = b.business.projectId;
      });
      memberDetails.asMap().forEach((int i, MemberDetail m) {
        // 名称 = メンバ名
        captions[(titleIdx2 + 1) + i][0] = m.member;
      });
    }

    // mms
    var mms =
        List.generate(numOfLines, (i) => List.filled(numOfItemsInLine, 0.0));
    {
      // 中身
      businessDetails.asMap().forEach((int i, BusinessDetail b) {
        // 売上 = earn
        mms[(titleIdx1 + 1) + i][1] = b.business.earn;
      });
      memberDetails.asMap().forEach((int iMember, MemberDetail m) {
        // 各月
        for (var iMonth = 0; iMonth < 12; iMonth++) {
          final DateTime search = DateTime(first.year, first.month + iMonth, 1);
          int cellIdx1 = titleIdx2 + 1 + iMember; // 行
          int cellIdx2 = iMonth + ViewTable._numOfCaptions; // データセル
          try {
            mms[cellIdx1][cellIdx2] += m.detail[search]!;
          } catch (e) {
            mms[cellIdx1][cellIdx2] = -77;
          }
        }
      });
    }

    // ViewTable
    final viewTable = ViewTable(businessDetails, memberDetails, captions, mms);

    return viewTable;
  }
}
