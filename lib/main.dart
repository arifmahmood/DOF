import 'package:DOF/pages/MainHomePage.dart';
import 'package:DOF/pages/home_page_native.dart';
import 'package:flutter/material.dart';
import 'package:DOF/pages/SetupSplashScreen.dart';
import 'package:DOF/util/Constant.dart';
import 'package:DOF/pages/HomePage.dart';
import 'package:DOF/pages/VideoSplashScreen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state =
    context.findAncestorStateOfType();

    state.setState(() {
      state.locale = newLocale;
    });
  }
}

class _MyAppState extends State<MyApp> {

  Locale locale;

  @override
  void initState() {
    super.initState();
    this._fetchLocale().then((locale) {
      setState(() {
        this.locale = locale;
      });
    });
  }


  @override
  Widget build(BuildContext context) {

    if (this.locale == null) {
      return CircularProgressIndicator();
    } else {
      return new MaterialApp(
        title: 'DOF',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.red,
        ),
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''),
          const Locale('ar', ''),
        ],
        locale: locale,
        builder: EasyLoading.init(),
        home: new SetupSplashScreen(),
        routes: <String, WidgetBuilder>{
//          HOME_SCREEN: (BuildContext context) => new HomeScreen(ModalRoute.of(context).settings.arguments),
          HOME_SCREEN: (BuildContext context) => new MainHomePage(),
          VIDEO_SPALSH: (BuildContext context) => new VideoSplashScreen(ModalRoute.of(context).settings.arguments),
          SETUP_SPLASH: (BuildContext context) => new SetupSplashScreen()
        },
      );
    }
  }

  _fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    String langCode = prefs.getString(CURRENT_LANGUAGE_CODE);
    String countryCode = prefs.getString(CURRENT_COUNTRY_CODE);
    if (langCode == null || langCode ==''){
      langCode='ar';
    }

    if (countryCode == null){
      countryCode='';
    }

    return Locale(langCode,
        countryCode);
  }}