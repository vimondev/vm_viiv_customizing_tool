import '../../../../Constants/index.dart';
import '../index.dart';

class VCSticker extends VCInteractionObject {
  String _absolutePath;
  EMetaType _type;

  VCSticker({
    required String absolutePath,
    required EMetaType type,
    required int width,
    required int height,
    required Map<String, double> position,
    required Map<String, double> scale,
    required double rotation,
    required double? duration,
  }) :
      this._absolutePath = absolutePath,
      this._type = type,
      super(
          width: width,
          height: height,
          position: position,
          scale: scale,
          rotation: rotation,
          duration: duration
      );

  String get absolutePath { return this._absolutePath; }
  set absolutePath(String value) { this._absolutePath = value; }

  EMetaType get type { return this._type; }
  set type(EMetaType value) { this._type = value; }

  String toString() {
    return "[VCSticker] absolutePath: " + this._absolutePath + ", type: " + this._type.toString() + ", " + super.toString();
  }
}