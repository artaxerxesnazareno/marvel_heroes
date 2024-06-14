class AppEnv{
String baseUrl;
String headerURl;
AppEnv(this.baseUrl, this.headerURl);

  static AppEnv I = AppEnv.create();

  factory AppEnv.create( {String baseUrl = "",String headerURl = ""}) {
    return I = AppEnv(baseUrl,headerURl);
  }
}

class HeaderUrlEnv {
  String apikey;
  String ts;
  String hash;

  HeaderUrlEnv({required this.apikey, required this.ts, required this.hash});

  String getHeader() {
    return 'apikey=$apikey&ts=$ts&hash=$hash';
  }
}
