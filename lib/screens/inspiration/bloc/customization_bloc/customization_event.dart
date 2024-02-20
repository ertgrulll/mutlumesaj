part of 'customization_bloc.dart';

@freezed
class CustomizationEvent with _$CustomizationEvent {
  const factory CustomizationEvent.setBackgroundImage(
    String asset,
  ) = _SetBackgroundImage;

  const factory CustomizationEvent.setColor(
    Color color,
  ) = _SetColor;

  const factory CustomizationEvent.setFontFamily(
    String fontFamily,
  ) = _SetFontFamily;
}
