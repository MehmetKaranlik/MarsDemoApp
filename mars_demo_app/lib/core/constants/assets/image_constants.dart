class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= _instance = ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();
  String get onboardFirst => toPng('onboard1');
  String get onboardSecond => toPng('onboard2');
  String get onboardThird => toPng('onboard3');
  String get onboardFourth => toPng('onboard4');
  String get favreaWhite => toPng('favrea_white');
  String get harryPoter => toPng('harry');
  String get starOff => toPng('star_off');

  String toPng(value) => 'assets/image/$value.png';
}
