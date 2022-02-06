enum HeroTag {
   HOMETODETAIL
}

extension HeroTagValue on HeroTag {
  String get path {
    switch (this) {
      case HeroTag.HOMETODETAIL:
        return 'homeToDetail';

      default:
        throw 'Not Found';
    }
  }
}
