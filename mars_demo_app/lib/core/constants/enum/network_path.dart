enum NetworkPath {
  BASE_URL,
 
}

extension NetworkPathValue on NetworkPath {
  String get path {
    switch (this) {
      case NetworkPath.BASE_URL:
        return 'https://xxxxxxxxx/api/v1';
    
      default:
        throw 'Not Found';
    }
  }
}
