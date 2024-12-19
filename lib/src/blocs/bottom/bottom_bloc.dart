import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    if (event.page == 1) emit(BottomInitial());
    if (event.page == 2) emit(BottomGuests());
    if (event.page == 3) emit(BottomGifts());
    if (event.page == 4) emit(BottomSettings());
  }
}
