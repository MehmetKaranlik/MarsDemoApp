import 'dart:io';
import 'package:vexana/vexana.dart';
import '../base/model/error_model.dart';
import '../constants/enum/network_path.dart';
import '../constants/enum/preferences_keys.dart';
import '../init/cache/locale_manager.dart';

class BaseNetworkService {
  static BaseNetworkService? _instance;
  static BaseNetworkService get instance {
    _instance ??= _instance = BaseNetworkService._init();
    return _instance!;
  }

  late INetworkManager networkManager;
  final _localeManager = LocaleManager.instance;

  BaseNetworkService._init() {
    networkManager = networkManagerOptions();
  }

  Future<void> retryToken() async {
    _instance = BaseNetworkService._init();
  }

  NetworkManager networkManagerOptions() {
    String accessToken = _localeManager.getStringValue(PreferencesKeys.ACCESS_TOKEN);
    return NetworkManager(
        errorModel: BaseErrorModel(),
        options: BaseOptions(
          baseUrl: NetworkPath.BASE_URL.path,
          headers: accessToken.isNotEmpty ? {HttpHeaders.authorizationHeader: 'Bearer $accessToken'} : null,
        ),
        onRefreshFail: () async {

        },
        onRefreshToken: (error, newService) async {
         return error;
        },
        isEnableLogger: true);
  }




}
