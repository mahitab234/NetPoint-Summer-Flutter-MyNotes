import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/models/note_model.dart';
import '../../../core/repositories/note_repository.dart';
import 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  final NoteModel note;

  NoteCubit(this.note) : super(NoteEditing(note));

  void updateTitle(String title) {
    note.title = title;
    note.modifiedAt = DateTime.now();
    emit(NoteEditing(note));
  }

  void updateBody(String body) {
    note.body = body;
    note.modifiedAt = DateTime.now();
    emit(NoteEditing(note));
  }

  Future<void> saveNote() async {
    await NotesRepository.instance.save(note);
    emit(NoteSaved());
  }

  Future<void> deleteNote() async {
    await NotesRepository.instance.delete(note.id);
    emit(NoteDeleted());
  }
}