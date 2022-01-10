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
}