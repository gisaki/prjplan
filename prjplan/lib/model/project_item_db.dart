import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:prjplan/model/project_item_state.dart';

class ProjectItemDb {
  Future<List<Task>> readTasks() async {
    var response =
        await http.get(Uri.http('localhost:3000', '/task', {} // クエリは無し
            ));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      List<Task> tasks = jsonData.map((data) => Task.fromJson(data)).toList();
      return tasks;
    }

    return [];
  }
}
