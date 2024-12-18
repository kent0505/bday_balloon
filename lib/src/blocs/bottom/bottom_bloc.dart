import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'bottom_event.dart';
part 'bottom_state.dart';

class BottomBloc extends Bloc<BottomEvent, BottomState> {
  BottomBloc() : super(BottomInitial()) {
    on<BottomEvent>(
      (event, emit) => switch (event) {
        ChangeBottom() => _changeBottom(event, emit),
      },
    );
  }

  void _changeBottom(ChangeBottom event, Emitter<BottomState> emit) async {
    if (event.page == 1) {
      final prefs = await SharedPreferences.getInstance();
      String name = prefs.getString('name') ?? 'User';
      String image = prefs.getString('image') ?? '';
      emit(BottomInitial(
        name: name,
        image: image,
      ));
    }
    if (event.page == 2) emit(BottomGuests());
    if (event.page == 3) emit(BottomGifts());
    if (event.page == 4) emit(BottomSettings());
  }
}
