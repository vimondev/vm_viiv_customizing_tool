class VCMusic {
  String _absolutePath;
  double _duration;
  double _startTime;

  VCMusic({
    required String absolutePath,
    required double duration,
    required double startTime,
  }) :
        this._absolutePath = absolutePath,
        this._duration = duration,
        this._startTime = startTime;

  String get absolutePath { return this._absolutePath; }
  set absolutePath(String value) { this._absolutePath = value; }

  double get duration { return this._duration; }
  set duration(double value) { this._duration = value; }

  double get startTime { return this._startTime; }
  set startTime(double value) { this._startTime = value; }

  String toString() {
    return "[VCMusic] absolutePath: $absolutePath, duration: " + this._duration.toString() + ", startTime: " + this._startTime.toString();
  }
}