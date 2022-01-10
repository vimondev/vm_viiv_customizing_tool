import 'VCMusic/index.dart';
import 'VCSlide/index.dart';
import 'VCTransition/index.dart';

class ViivCustomizingData {
  List<VCSlide> _slides;
  List<VCTransition> _transitions;
  List<VCMusic> _music;

  ViivCustomizingData({
    required List<VCSlide> slides,
    required List<VCTransition> transitions,
    required List<VCMusic> music,
  }) :
    this._slides = slides,
    this._transitions = transitions,
    this._music = music;

  List<VCSlide> get slides { return this._slides; }
  set slides(List<VCSlide> value) { this._slides = value; }

  List<VCTransition> get transitions { return this._transitions; }
  set transitions(List<VCTransition> value) { this._transitions = value; }

  List<VCMusic> get music { return this._music; }
  set music(List<VCMusic> value) { this._music = value; }
}