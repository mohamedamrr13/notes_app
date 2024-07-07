import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/notescubit/notesstates.dart';
import 'package:notes_app/helper/helper.dart';
import 'package:notes_app/models/notemodel.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  void fetchNotes() {
    var box = Hive.box<NoteModel>(kNotesBox);
    notes = box.values.toList();
    emit(NotesSuccess());
  }

  void deleteNotes() {
    Hive.box<NoteModel>(kNotesBox).clear();
    var box = Hive.box<NoteModel>(kNotesBox);
    notes = box.values.toList();
    emit(NotesDelete());
  }
}
