class SvgConstants {
  static SvgConstants? _instance;
  static SvgConstants get instance {
    _instance ??= _instance = SvgConstants._init();
    return _instance!;
  }

  SvgConstants._init();
  String toSvg(String value) => 'assets/svg/$value.svg';
  // Favrea Logo
  String get favreaRed => toSvg('favrea_red');
  String get favreaWhite => toSvg('favrea_white');
  String get favreaStarWhite => toSvg('favrea_star_white');
  String get favreaIconAndName => toSvg('favrea_icon_and_name');

  // Onboarding
  String get onboardFirst => toSvg('onboard1');
  String get onboardSecond => toSvg('onboard2');

  // Splash Auth
  String get splashAuth => toSvg('splash_auth');
  String get splashAuth2 => toSvg('splash_auth2');

  // Register
  String get register1 => toSvg('register1');
  String get register2 => toSvg('register2');
  String get icon => toSvg('person_outlined');

  // Login
  String get login1 => toSvg('login1');

  //Main
  String get mainLogo => toSvg('favrea_main_icon');

  //ShareContent
  String get pickAlistIcon => toSvg('add_collection_pick_list');
  String get pickAList => toSvg('pick_a_list_icon');
  String get filmIcon => toSvg('fim_icon');
  String get musicIcon => toSvg('music_icon');
  String get bookIcon => toSvg('book_icon');
  String get magnifyingGlassIcon => toSvg('magnifying_glass');
  String get sortIcon => toSvg('sort_icon');

  // Settings
  String get email => toSvg('email');
  String get education => toSvg('education');
  String get thinking => toSvg('thinking');
  String get lock => toSvg('lock');
  String get twoLine => toSvg('twoline');
  String get spotify => toSvg('spotify');
  String get logout => toSvg('logout');
  String get comment => toSvg('comment');
  String get add => toSvg('add');
  String get star => toSvg('star');

  //profile
  String get copy => toSvg('copy');
  String get settings => toSvg('setting');
  String get scroll => toSvg('scroll');
  String get sadFace => toSvg('sadface');

  //Comment
  String get commentOutlined => toSvg("comment_outlined");
  String get heartOutlined => toSvg("heart_outlined");
  String get dividingIcon => toSvg("dividin_icon");
}
