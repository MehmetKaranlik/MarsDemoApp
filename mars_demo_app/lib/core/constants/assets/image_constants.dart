class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= _instance = ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();

  String get starFilled => toPng('star_filled');
  String get iceCream => toPng('icecream');
  String get tripleIceCream => toPng('triple_icecream');
  String get iceCreamCup => toPng('icecream_cup');

  String toPng(value) => 'assets/image/$value.png';
}
