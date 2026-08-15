import 'dart:convert';

class NoteModel {
  final String id;
  String title;
  String body;
  DateTime modifiedAt;

  NoteModel({
    required this.id,
    required this.title,
    required this.body,
    required this.modifiedAt,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'body': body,
    'modifiedAt': modifiedAt.toIso8601String(),
  };

  factory NoteModel.fromMap(Map<String, dynamic> map) => NoteModel(
    id: map['id'],
    title: map['title'],
    body: map['body'],
    modifiedAt: DateTime.parse(map['modifiedAt']),
  );

  String toJson() => jsonEncode(toMap());

  factory NoteModel.fromJson(String source) =>
      NoteModel.fromMap(jsonDecode(source));


  factory NoteModel.empty() => NoteModel(
    id: DateTime.now().millisecondsSinceEpoch.toString(),
    title: '',
    body: '',
    modifiedAt: DateTime.now(),
  );
}