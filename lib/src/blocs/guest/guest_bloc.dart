import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/guest.dart';

part 'guest_event.dart';
part 'guest_state.dart';

class GuestBloc extends Bloc<GuestEvent, GuestState> {
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
    // List<Gift>  = await getGifts();
    // emit(GuestLoaded(guests: guestsList));
  }

  void _add(GuestAdd event, Emitter<GuestState> emit) async {
    // emit(GuestLoaded(guests: guestsList));
  }

  void _edit(GuestEdit event, Emitter<GuestState> emit) async {
    // emit(GuestLoaded(guests: guestsList));
  }

  void _delete(GuestDelete event, Emitter<GuestState> emit) async {
    // emit(GuestLoaded(guests: guestsList));
  }
}
