class AnimationConstants {
  static AnimationConstants? _instace;
  static AnimationConstants get instance {
    _instace ??= _instace = AnimationConstants._init();
    return _instace!;
  }

  AnimationConstants._init();

}
