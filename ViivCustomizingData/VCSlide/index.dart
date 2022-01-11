import 'VCInteractionObject/VCSticker/index.dart';
import 'VCInteractionObject/VCText/index.dart';
import 'VCMedia/index.dart';

class VCSlide {
  double _duration;
  List<VCMedia> _media;
  List<VCText> _texts;
  List<VCSticker> _stickers;

  VCSlide({
    required double duration,
    required List<VCMedia> media,
    required List<VCText> texts,
    required List<VCSticker> stickers,
  }) :
        this._duration = duration,
        this._media = media,
        this._texts = texts,
        this._stickers = stickers;

  double get duration { return this._duration; }
  set duration(double value) { this._duration = value; }

  List<VCMedia> get media { return this._media; }
  set media(List<VCMedia> value) { this._media = value; }

  List<VCText> get texts { return this._texts; }
  set texts(List<VCText> value) { this._texts = value; }

  List<VCSticker> get stickers { return this._stickers; }
  set stickers(List<VCSticker> value) { this._stickers = value; }

  addMedia(VCMedia media) {
    this._media.add(media);
  }

  changeMedia(int index, VCMedia media) {
    if (this._media.length <= index || index < 0) return;
    this._media[index] = media;
  }

  moveMedia(int fromIndex, int toIndex) {
    if (
        this._media.length <= fromIndex || fromIndex < 0 ||
        this._media.length <= toIndex || toIndex < 0
    ) return;
    VCMedia media = this._media[fromIndex];
    this._media.removeAt(fromIndex);
    this._media.insert(toIndex, media);
  }

  deleteMedia(int index) {
    if (this._media.length <= index || index < 0) return;
    this._media.removeAt(index);
  }

  deleteAllMedia() {
    while (this._media.length > 0) {
      this.deleteMedia(0);
    }
  }

  addText(VCText text) {
    this._texts.add(text);
  }

  changeText(int index, VCText text) {
    if (this._texts.length <= index || index < 0) return;
    this._texts[index] = text;
  }

  moveText(int fromIndex, int toIndex) {
    if (
        this._texts.length <= fromIndex || fromIndex < 0 ||
        this._texts.length <= toIndex || toIndex < 0
    ) return;
    VCText text = this._texts[fromIndex];
    this._texts.removeAt(fromIndex);
    this._texts.insert(toIndex, text);
  }

  deleteText(int index) {
    if (this._texts.length <= index || index < 0) return;
    this._texts.removeAt(index);
  }

  deleteAllTexts() {
    while (this._texts.length > 0) {
      this.deleteText(0);
    }
  }

  addSticker(VCSticker sticker) {
    this._stickers.add(sticker);
  }

  changeSticker(int index, VCSticker sticker) {
    if (this._stickers.length <= index || index < 0) return;
    this._stickers[index] = sticker;
  }

  moveSticker(int fromIndex, int toIndex) {
    if (
        this._stickers.length <= fromIndex || fromIndex < 0 ||
        this._stickers.length <= toIndex || toIndex < 0
    ) return;
    VCSticker sticker = this._stickers[fromIndex];
    this._stickers.removeAt(fromIndex);
    this._stickers.insert(toIndex, sticker);
  }

  deleteSticker(int index) {
    if (this._stickers.length <= index || index < 0) return;
    this._stickers.removeAt(index);
  }

  deleteAllStickers() {
    while (this._stickers.length > 0) {
      this.deleteSticker(0);
    }
  }

  String toString() {
    String result = "[VCSlide]\n  duration: ${this._duration}\n";
    for (int i = 0; i < this._media.length; i++) {
      result += "  [MEDIA${i + 1}] " + this._media[i].toString() + "\n";
    }
    for (int i = 0; i < this._texts.length; i++) {
      result += "  [TEXT${i + 1}] " + this._texts[i].toString() + "\n";
    }
    for (int i = 0; i < this._stickers.length; i++) {
      result += "  [STICKER${i + 1}] " + this._stickers[i].toString() + "\n";
    }
    return result;
  }
}