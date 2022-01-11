import '../../../Constants/index.dart';
import 'CropData/index.dart';

class VCMedia {
  String _absolutePath;
  int _width;
  int _height;
  EMetaType _type;
  double? _duration;
  double? _startTime;
  Map<String, double>? _position;
  Map<String, double>? _scale;
  double? _rotation;
  CropData? _cropData;

  VCMedia({
    required String absolutePath,
    required int width,
    required int height,
    required EMetaType type,
    required double? duration,
    required double? startTime,
    required Map<String, double>? position,
    required Map<String, double>? scale,
    required double? rotation,
    required CropData? cropData,
  }) :
        this._absolutePath = absolutePath,
        this._width = width,
        this._height = height,
        this._type = type,
        this._duration = duration,
        this._startTime = startTime,
        this._position = position,
        this._scale = scale,
        this._rotation = rotation,
        this._cropData = cropData;

  String get absolutePath { return this._absolutePath; }
  set absolutePath(String value) { this._absolutePath = value; }

  int get width { return this._width; }
  set width(int value) { this._width = value; }

  int get height { return this._height; }
  set height(int value) { this._height = value; }

  EMetaType get type { return this._type; }
  set type(EMetaType value) { this._type = value; }

  double? get duration { return this._duration; }
  set duration(double? value) { this._duration = value; }

  double? get startTime { return this._startTime; }
  set startTime(double? value) { this._startTime = value; }

  Map<String, double>? get position { return this._position; }
  set position(Map<String, double>? value) { this._position = value; }

  Map<String, double>? get scale { return this._scale; }
  set scale(Map<String, double>? value) { this._scale = value; }

  double? get rotation { return this._rotation; }
  set rotation(double? value) { this._rotation = value; }

  CropData? get cropData { return this._cropData; }
  set cropData(CropData? value) { this._cropData = value; }

  String toString() {
    return "[VCMedia] absolutePath: " + this._absolutePath + ", width: " + this._width.toString() + ", height: " + this._height.toString() + ", type: " + this._type.toString() + ", duration: " + this._duration.toString() + ", startTime: " + this._startTime.toString() + ", position: " + this._position.toString() + ", scale: " + this._scale.toString() + ", rotation: " + this._rotation.toString() + ", cropData: " + this._cropData.toString();
  }
}