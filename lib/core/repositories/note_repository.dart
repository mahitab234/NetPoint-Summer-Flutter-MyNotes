import 'package:shared_preferences/shared_preferences.dart';
import '../models/note_model.dart';

class NotesRepository {
  NotesRepository._();
  static final NotesRepository instance = NotesRepository._();

  static const _key = 'notes_list';

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  List<NoteModel> loadAll() {
    final raw = _prefs.getStringList(_key) ?? [];
    return raw.map((e) => NoteModel.fromJson(e)).toList()
      ..sort((a, b) => b.modifiedAt.compareTo(a.modifiedAt));
  }

  Future<void> save(NoteModel note) async {
    final notes = loadAll();
    final index = notes.indexWhere((n) => n.id == note.id);
    if (index >= 0) {
      notes[index] = note;
    } else {
      notes.insert(0, note);
    }
    await _prefs.setStringList(_key, notes.map((n) => n.toJson()).toList());
  }

  Future<void> delete(String id) async {
    final notes = loadAll()..removeWhere((n) => n.id == id);
    await _prefs.setStringList(_key, notes.map((n) => n.toJson()).toList());
  }
}