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

  addSlide(VCSlide slide) {
    this._slides.add(slide);
  }

  changeSlide(int index, VCSlide slide) {
    if (this._slides.length <= index || index < 0) return;
    this._slides[index] = slide;
  }

  moveSlide(int fromIndex, int toIndex) {
    if (
        this._slides.length <= fromIndex || fromIndex < 0 ||
        this._slides.length <= toIndex || toIndex < 0
    ) return;
    VCSlide slide = this._slides[fromIndex];
    this._slides.removeAt(fromIndex);
    this._slides.insert(toIndex, slide);
  }

  deleteSlide(int index) {
    if (this._slides.length <= index || index < 0) return;
    this._slides.removeAt(index);
  }

  deleteAllSlides() {
    while (this._slides.length > 0) {
      this.deleteSlide(0);
    }
  }

  addTransition(VCTransition transition) {
    this._transitions.add(transition);
  }

  changeTransition(int index, VCTransition transition) {
    if (this._transitions.length <= index || index < 0) return;
    this._transitions[index] = transition;
  }

  moveTransition(int fromIndex, int toIndex) {
    if (
        this._transitions.length <= fromIndex || fromIndex < 0 ||
        this._transitions.length <= toIndex || toIndex < 0
    ) return;
    VCTransition transition = this._transitions[fromIndex];
    this._transitions.removeAt(fromIndex);
    this._transitions.insert(toIndex, transition);
  }

  deleteTransition(int index) {
    if (this._transitions.length <= index || index < 0) return;
    this._transitions.removeAt(index);
  }

  deleteAllTransitions() {
    while (this._transitions.length > 0) {
      this.deleteTransition(0);
    }
  }

  addMusic(VCMusic music) {
    this._music.add(music);
  }

  changeMusic(int index, VCMusic music) {
    if (this._music.length <= index || index < 0) return;
    this._music[index] = music;
  }

  moveMusic(int fromIndex, int toIndex) {
    if (
        this._music.length <= fromIndex || fromIndex < 0 ||
        this._music.length <= toIndex || toIndex < 0
    ) return;
    VCMusic music = this._music[fromIndex];
    this._music.removeAt(fromIndex);
    this._music.insert(toIndex, music);
  }

  deleteMusic(int index) {
    if (this._music.length <= index || index < 0) return;
    this._music.removeAt(index);
  }

  deleteAllMusic() {
    while (this._music.length > 0) {
      this.deleteMusic(0);
    }
  }
}