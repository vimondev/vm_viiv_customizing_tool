class VCInteractionObject {
  int _width;
  int _height;
  Map<String, double> _position;
  Map<String, double> _scale;
  double _rotation;
  double? _duration;

  VCInteractionObject({
    required int width,
    required int height,
    required Map<String, double> position,
    required Map<String, double> scale,
    required double rotation,
    required double? duration
  }) :
        this._width = width,
        this._height = height,
        this._position = position,
        this._scale = scale,
        this._rotation = rotation,
        this._duration = duration;

  int get width { return this._width; }
  set width(int value) { this._width = value; }

  int get height { return this._height; }
  set height(int value) { this._height = value; }

  Map<String, double> get position { return this._position; }
  set position(Map<String, double> value) { this._position = value; }

  Map<String, double> get scale { return this._scale; }
  set scale(Map<String, double> value) { this._scale = value; }

  double get rotation { return this._rotation; }
  set rotation(double value) { this._rotation = value; }

  double? get duration { return this._duration; }
  set duration(double? value) { this._duration = value; }
}