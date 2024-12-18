import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/database.dart';
import '../../database/guest.dart';

part 'guest_event.dart';
part 'guest_state.dart';

class GuestBloc extends Bloc<GuestEvent, GuestState> {
  final _db = DB();

  GuestBloc() : super(GuestInitial()) {
    on<GuestEvent>(
      (event, emit) => switch (event) {
        GuestGet() => _get(event, emit),
        GuestAdd() => _add(event, emit),
        GuestEdit() => _edit(event, emit),
        GuestDelete() => _delete(event, emit),
      },
    );
  }

  void _get(GuestGet event, Emitter<GuestState> emit) async {
    try {
      await _db.init();
      List<Guest> models = await _db.getGuests();
      emit(GuestLoaded(guests: models));
    } on Object catch (_) {}
  }

  void _add(GuestAdd event, Emitter<GuestState> emit) async {
    List<Guest> models = await _db.addGuest(event.guest);
    emit(GuestLoaded(guests: models));
  }

  void _edit(GuestEdit event, Emitter<GuestState> emit) async {
    List<Guest> models = await _db.editGuest(event.guest);
    emit(GuestLoaded(guests: models));
  }

  void _delete(GuestDelete event, Emitter<GuestState> emit) async {
    List<Guest> modelsList = await _db.deleteGuest(event.guest);
    emit(GuestLoaded(guests: modelsList));
  }
}
