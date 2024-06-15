import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:prjplan/model/project_item_state.dart';

class ProjectItemDb {
  static const int _httpTimeoutSec = 5; // HTTP GET/POST 時のタイムアウト秒数

  Future<String> _get({
    required Uri uri,
  }) async {
    final http.Response response = await http.get(uri).timeout(
      const Duration(seconds: _httpTimeoutSec),
      onTimeout: () {
        throw Exception();
      },
    );
    if (response.statusCode == 200) {
      return response.body;
    }
    return "";
  }

  Future<List<Task>> readTasks() async {
    final uri = Uri.http('localhost:3000', '/task', {});
    try {
      var body = await _get(uri: uri);
      List<dynamic> jsonData = json.decode(body);
      List<Task> tasks = jsonData.map((data) => Task.fromJson(data)).toList();
      return tasks;
    } catch (error) {
      // json 変換失敗、タイムアウトなど
      // 現状はすべて丸ごと、同じエラー扱い（必要に打応じて後で分離）
      return [];
    }
  }

  Future<List<Business>> readBusinesses() async {
    final uri = Uri.http('localhost:3000', '/business', {});
    try {
      var body = await _get(uri: uri);
      List<dynamic> jsonData = json.decode(body);
      List<Business> businesses =
          jsonData.map((data) => Business.fromJson(data)).toList();
      return businesses;
    } catch (error) {
      // json 変換失敗、タイムアウトなど
      // 現状はすべて丸ごと、同じエラー扱い（必要に打応じて後で分離）
      return [];
    }
  }
}
