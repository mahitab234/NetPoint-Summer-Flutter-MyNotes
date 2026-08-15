import '../../../core/models/note_model.dart';

abstract class NoteState {}

class NoteEditing extends NoteState {
  final NoteModel note;
  NoteEditing(this.note);
}

class NoteSaved extends NoteState {}

class NoteDeleted extends NoteState {}