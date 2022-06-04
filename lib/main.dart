
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_a/providers/CryptoDataProvider.dart';
import 'package:flutter_course_a/providers/ThemeProvider.dart';
import 'package:flutter_course_a/ui/MainWrapper.dart';
import 'package:flutter_course_a/ui/ui_helper/ThemeSwitcher.dart';
import 'package:provider/provider.dart';



void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => CryptoDataProvider()),
        ],
      child: const MyMaterialApp(),
    )
  );
}



class MyMaterialApp extends StatefulWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  _MyMaterialAppState createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context, themeProvider, child){
          return MaterialApp(
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            debugShowCheckedModeBanner: false,
            home: const Directionality(
              textDirection: TextDirection.ltr,
              child: MainWrapper(),
            ),
          );
        }
    );



  }
}
