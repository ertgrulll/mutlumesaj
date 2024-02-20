part of 'customization_bloc.dart';

@freezed
class CustomizationState with _$CustomizationState {
  const factory CustomizationState.set({
    required String fontFamily,
    String? background,
    Color? color,
  }) = _Set;
}
