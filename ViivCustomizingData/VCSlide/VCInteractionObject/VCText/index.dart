import '../index.dart';

class VCText extends VCInteractionObject {
  String _text;
  String _jsonPath;

  VCText({
    required String text,
    required String jsonPath,
    required int width,
    required int height,
    required Map<String, double> position,
    required Map<String, double> scale,
    required double rotation,
    required double? duration
  }) :
      this._text = text,
      this._jsonPath = jsonPath,
      super(
          width: width,
          height: height,
          position: position,
          scale: scale,
          rotation: rotation,
          duration: duration
      );

  String get text { return this._text; }
  set text(String value) { this._text = value; }

  String get jsonPath { return this._jsonPath; }
  set jsonPath(String value) { this._jsonPath = value; }
}