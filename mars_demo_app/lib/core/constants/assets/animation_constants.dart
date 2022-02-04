class AnimationConstants {
  static AnimationConstants? _instace;
  static AnimationConstants get instance {
    _instace ??= _instace = AnimationConstants._init();
    return _instace!;
  }

  String get loadingAnimation => getJson('loading_animation');
  String get starAnimation => getRive('star_animation');

  String getJson(String value) => 'assets/animation/$value.json';
  String getRive(String value) => 'assets/animation/$value.riv';

  AnimationConstants._init();

}
