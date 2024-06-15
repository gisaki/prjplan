import 'package:flutter/material.dart';

class DialogUtils {
  DialogUtils._();

  /// 入力した文字列を返すダイアログを表示する
  static Future<String?> showEditingDialog(
    BuildContext context,
    String text,
  ) async {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return TextEditingDialog(text: text);
      },
    );
  }
}

class TextEditingDialog extends StatefulWidget {
  const TextEditingDialog({super.key, this.text});
  final String? text;

  @override
  State<TextEditingDialog> createState() => _TextEditingDialogState();
}

class _TextEditingDialogState extends State<TextEditingDialog> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // controller.text = widget.text ?? ''; // 有効にすると、TextFormFieldに初期値を代入する
    focusNode.addListener(
      () {
        // フォーカスが当たったときに文字列が選択された状態にする
        if (focusNode.hasFocus) {
          controller.selection = TextSelection(
              baseOffset: 0, extentOffset: controller.text.length);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('追加'),
      content: TextFormField(
        // onFieldSubmitted を使いたいので　TextField ではなく
        autofocus: true, // ダイアログが開いたときに自動でフォーカスを当てる
        focusNode: focusNode,
        controller: controller,
        onFieldSubmitted: (_) {
          // エンターを押したときに実行される
          Navigator.of(context).pop(controller.text);
        },
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop('');
          },
          child: const Text('キャンセル'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(controller.text);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
