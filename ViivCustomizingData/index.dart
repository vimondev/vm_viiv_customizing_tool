import '../index.dart';
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

  VCSlide? getSlide(int slideIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    return this._slides[slideIndex];
  }

  VCTransition? getTransition(int transitionIndex) {
    if (this._transitions.length <= transitionIndex || transitionIndex < 0) return null;
    return this._transitions[transitionIndex];
  }

  VCMusic? getMusic(int musicIndex) {
    if (this._music.length <= musicIndex || musicIndex < 0) return null;
    return this._music[musicIndex];
  }

  VCMedia? getMedia(int slideIndex, int mediaIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    if (this._slides[slideIndex].media.length <= mediaIndex || mediaIndex < 0) return null;
    return this._slides[slideIndex].media[mediaIndex];
  }

  VCText? getText(int slideIndex, int textIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    if (this._slides[slideIndex].texts.length <= textIndex || textIndex < 0) return null;
    return this._slides[slideIndex].texts[textIndex];
  }

  VCSticker? getSticker(int slideIndex, int stickerIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    if (this._slides[slideIndex].stickers.length <= stickerIndex || stickerIndex < 0) return null;
    return this._slides[slideIndex].stickers[stickerIndex];
  }

  addMedia(int slideIndex, VCMedia media) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].addMedia(media);
  }

  addText(int slideIndex, VCText text) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].addText(text);
  }

  addSticker(int slideIndex, VCSticker sticker) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].addSticker(sticker);
  }

  changeMedia(int slideIndex, int mediaIndex, VCMedia media) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].changeMedia(mediaIndex, media);
  }

  changeText(int slideIndex, int textIndex, VCText text) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].changeText(textIndex, text);
  }

  changeSticker(int slideIndex, int stickerIndex, VCSticker sticker) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].changeSticker(stickerIndex, sticker);
  }

  moveMedia(int slideIndex, int fromIndex, int toIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].moveMedia(fromIndex, toIndex);
  }

  moveText(int slideIndex, int fromIndex, int toIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].moveText(fromIndex, toIndex);
  }

  moveSticker(int slideIndex, int fromIndex, int toIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].moveSticker(fromIndex, toIndex);
  }

  deleteMedia(int slideIndex, int mediaIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].deleteMedia(mediaIndex);
  }

  deleteText(int slideIndex, int textIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].deleteText(textIndex);
  }

  deleteSticker(int slideIndex, int stickerIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].deleteSticker(stickerIndex);
  }

  deleteAllMedia(int slideIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].deleteAllMedia();
  }

  deleteAllTexts(int slideIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].deleteAllTexts();
  }

  deleteAllStickers(int slideIndex) {
    if (this._slides.length <= slideIndex || slideIndex < 0) return null;
    this._slides[slideIndex].deleteAllStickers();
  }

  String toString() {
    String result = "[ViivCustomizingData]\n";
    for (int i = 0; i < this._slides.length; i++) {
      result += "  [SLIDE${i + 1}] " + this._slides[i].toString() + "\n";
    }
    for (int i = 0; i < this._transitions.length; i++) {
      result += "  [TRANSITION${i + 1}] " + this._transitions[i].toString() + "\n";
    }
    result += "\n";
    for (int i = 0; i < this._music.length; i++) {
      result += "  [MUSIC${i + 1}] " + this._music[i].toString() + "\n";
    }
    return result;
  }
}