import 'package:flutter/material.dart';
import 'package:marvel_heroes/app_env.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:marvel_heroes/usecases/character_usecase.dart';
import 'package:marvel_heroes/usecases/comic_usecase.dart';


Future<void> main() async {
  await dotenv.load(fileName: ".env");
  String baseUrl = "http://gateway.marvel.com/v1/public";
String apiKey = dotenv.env['APIKEY']!;
String ts = dotenv.env['TS']!;
String hash = dotenv.env['HASH']!;

  HeaderUrlEnv headerUrlEnv = HeaderUrlEnv(apikey: apiKey, ts: ts, hash: hash);

  print('apiKey: ${headerUrlEnv.getHeader()}');
  AppEnv.create(baseUrl: baseUrl, headerURl: headerUrlEnv.getHeader());
  CharacterUseCase().callByName('thanos');
  // ComicUseCase().call(1009652);
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/home': (context) => HomePage(),
        // '/sobre': (context) => SobreScreen(),
        // '/help': (context) => HelpPage()
      },
      initialRoute: '/home',
    );
  }
}
