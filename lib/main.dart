
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_a/ui/ui_helper/ThemeSwitcher.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(const MyMaterialApp());
}



class MyMaterialApp extends StatefulWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  _MyMaterialAppState createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            actions: const [
              ThemeSwitcher(),
            ],
            title: const Text('ExchangeBs'),
          ),
          body: Container(),
        ),
      ),
    );
  }
}
