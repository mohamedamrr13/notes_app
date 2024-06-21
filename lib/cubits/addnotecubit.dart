import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/addnotestates.dart';
import 'package:notes_app/helper/helper.dart';
import 'package:notes_app/models/notemodel.dart';

class AddNoteCubit extends Cubit {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var box = Hive.box<NoteModel>(kNotesBox);
      await box.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
