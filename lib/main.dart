
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Presentation/ui/MainWrapper.dart';
import 'Presentation/ui/SignUpScreen.dart';
import 'logic/providers/CryptoDataProvider.dart';
import 'logic/providers/MarketViewProvider.dart';
import 'logic/providers/ThemeProvider.dart';
import 'logic/providers/UserDataProvider.dart';



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
          ChangeNotifierProvider(create: (context) => MarketViewProvider()),
          ChangeNotifierProvider(create: (context) => UserDataProvider()),
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
            home: FutureBuilder<SharedPreferences>(
              future: SharedPreferences.getInstance(),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  SharedPreferences sharedPreferences = snapshot.data!;
                  var loggedInState = sharedPreferences.getBool("LoggedIn") ?? false;

                  if(loggedInState){
                    return const MainWrapper();
                  }else{
                    return const SignUpScreen();
                  }

                }else{
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          );
        }
    );



  }
}
