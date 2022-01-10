class VCTransition {
  String _absolutePath;
  double _inPoint;
  double _duration;
  double _transitionPoint;

  VCTransition({
    required String absolutePath,
    required double inPoint,
    required double duration,
    required double transitionPoint,
  }) :
        this._absolutePath = absolutePath,
        this._inPoint = inPoint,
        this._duration = duration,
        this._transitionPoint = transitionPoint;

  String get absolutePath { return this._absolutePath; }
  set absolutePath(String value) { this._absolutePath = value; }

  double get inPoint { return this._inPoint; }
  set inPoint(double value) { this._inPoint = value; }

  double get duration { return this._duration; }
  set duration(double value) { this._duration = value; }

  double get transitionPoint { return this._transitionPoint; }
  set transitionPoint(double value) { this._transitionPoint = value; }
}