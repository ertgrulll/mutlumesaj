import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customization_event.dart';
part 'customization_state.dart';
part 'customization_bloc.freezed.dart';

class CustomizationBloc extends Bloc<CustomizationEvent, CustomizationState> {
  CustomizationBloc()
      : super(const _Set(
          background: "assets/bg-1.jpg",
          fontFamily: "Quicksand",
        )) {
    on<_SetBackgroundImage>((event, emit) {
      emit(_Set(
        background: event.asset,
        color: null,
        fontFamily: state.fontFamily,
      ));
    });

    on<_SetColor>((event, emit) {
      emit(_Set(
        background: null,
        color: event.color,
        fontFamily: state.fontFamily,
      ));
    });

    on<_SetFontFamily>((event, emit) {
      emit(_Set(
        background: state.background,
        color: state.color,
        fontFamily: event.fontFamily,
      ));
    });
  }
}
