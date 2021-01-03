import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DOF/network/response/ResponseData.dart';
import 'package:DOF/pages/SetupSplashScreen.dart';
import 'package:DOF/util/Constant.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import '../main.dart';
import 'VideoSplashScreen.dart';

class HomeScreen extends StatefulWidget {
  ResponseData data;

  @override
  HomeScreenState createState() => new HomeScreenState(this.data);

  HomeScreen(@required this.data);
}

class HomeScreenState extends State<HomeScreen> {
  ResponseData data;
  String urlToLoad;
  String titleToShow;
  String maintainancePageToLoad;
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  WebViewController webView ;
  static  List<BottomNavigationBarItem> bottomNavigation= new List();
  bool timeout = true;

  String languageCode= 'ar';

  var _selectedIndex=0;
  DateTime currentBackPressTime;

  var exit_warning= 'Tap back again to leave';


  loadUrl(String url, String maintainance, String title){
    EasyLoading.show(status: 'loading...');
    setState(() {
      titleToShow = title;
      urlToLoad = url;
      maintainancePageToLoad = maintainance;
      timeout = true;
    });
    webView.loadUrl(urlToLoad);
    Future.delayed(Duration(seconds: int.tryParse(data.data.settings.pageTimeOut)== null? 10: int.tryParse(data.data.settings.pageTimeOut) ), (){

      if(timeout){
        webView.loadUrl(maintainancePageToLoad);
      }
    });
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: exit_warning);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text(titleToShow , style:  TextStyle(color: Color(0xFF8b2926)),),
      backgroundColor: Colors.white.withOpacity(0.7),
      iconTheme: IconThemeData(color: Color(0xFF8b2926)),
      // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
      actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFF8b2926),
            ),
            onPressed: () {
              // do something
            },
          ),
        IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xFF8b2926),
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
    ),

      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF545454), //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child:  ListView(shrinkWrap: true,

                  children: <Widget>[
                    for (Menu m in data.data.sideMenu)
                      ListTile(
                        title: Directionality(
                            textDirection: languageCode!='ar'? TextDirection.ltr:TextDirection.rtl,
                            child: Text(m.langString.toJson()[languageCode],style: TextStyle(color: Colors.white),)),
                        tileColor: Color(0xFF545454),
                        leading:m.icon!= null? Image.file(File(m.iconLocalPath), width: 30.0, height: 30.0): m.title=='Language'? Icon(Icons.language):null,
                        onTap: () {

                          if ('Language'== m.title){

                            SharedPreferences.getInstance().then((value) {
                              if (languageCode == 'en'){
                                value.setString(CURRENT_LANGUAGE_CODE, 'ar');
                                MyApp.setLocale(context, Locale('ar'));
                                setState(() {
                                  languageCode ='ar';
                                });
                              }
                              else if (languageCode == 'ar'){
                                value.setString(CURRENT_LANGUAGE_CODE, 'en');
                                MyApp.setLocale(context, Locale('en'));
                                setState(() {
                                  languageCode ='en';
                                });
                              }


                            });
                          } else{
                            loadUrl( m.link.toJson()[languageCode], m.maintanancePage, m.langString.toJson()[languageCode]);
                          }

                          Navigator.of(context).pop();
                        },
                      )

                  ],
                ),

              ),
              SizedBox(height: 8,),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('Copyright \u00a9 2016 DOF. All right reserved',style: TextStyle(color: Colors.white),))
//              ),

            ],
          ),
        ),
      ),
      body: WillPopScope(
        child: Builder(builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: WebView(
              initialUrl: urlToLoad,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
                webView = webViewController;
              },
              javascriptChannels: <JavascriptChannel>[
                _toasterJavascriptChannel(context),
              ].toSet(),
              navigationDelegate: (NavigationRequest request) {
                if (request.url.startsWith('https://www.youtube.com/')) {
                  print('blocking navigation to $request}');
                  return NavigationDecision.prevent;
                }
                print('allowing navigation to $request');
                return NavigationDecision.navigate;
              },
              onPageStarted: (String url) {
                print('Page started loading: $url');
                timeout= false;
                EasyLoading.dismiss();
              },
              onPageFinished: (String url) {
                print('Page finished loading: $url');
                EasyLoading.dismiss();
              },
              onWebResourceError: (WebResourceError webviewerrr) {
                if (webviewerrr.failingUrl == urlToLoad) {
                  webView.loadUrl(maintainancePageToLoad);
                }

                print('Error occured: ${webviewerrr.failingUrl}');
              },

              gestureNavigationEnabled: true,
            ),
          );
        }),
          onWillPop: onWillPop
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          for ( Menu m in data.data.bottomMenu)
          BottomNavigationBarItem(
            icon: m.icon!= null? Image.file(File(m.iconLocalPath), width: 25.0, height: 25.0):Icon(Icons.account_balance),
            label: m.langString.toJson()[languageCode],
          )

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap:(value) {
          loadUrl(data.data.bottomMenu[value].link.toJson()[languageCode], data.data.bottomMenu[value].maintanancePage, data.data.bottomMenu[value].langString.toJson()[languageCode]);
          setState(() {
            _selectedIndex = value;
          });

        },
      ),
//      floatingActionButton: favoriteButton(),
    );
  }


  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      titleToShow= 'HOME';
      urlToLoad = data.data.settings.mainPage;
      maintainancePageToLoad =data.data.settings.maintanancePage;
    });
    SharedPreferences.getInstance().then((value) {
      String language = value.getString(CURRENT_LANGUAGE_CODE);
      setState(() {
        languageCode = language== null? 'ar': language;
      });
    });

//    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  HomeScreenState(this.data);
}
