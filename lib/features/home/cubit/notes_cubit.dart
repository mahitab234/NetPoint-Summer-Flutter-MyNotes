import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/repositories/note_repository.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  void loadNotes() {
    final notes = NotesRepository.instance.loadAll();
    emit(NotesLoaded(notes));
  }
}