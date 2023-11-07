import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notsapp/constantes.dart';
import 'package:notsapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoaginf());
    try {
      var noteBox = Hive.box(kNotbox);
      emit(AddNotSuccess());
      await noteBox.add(note);
    } catch (e) {
      print(e.toString());
    }
  }
}
