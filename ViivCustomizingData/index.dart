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
}