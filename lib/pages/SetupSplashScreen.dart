import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DOF/network/NetworkCall.dart';
import 'package:DOF/network/response/ResponseData.dart';
import 'package:DOF/util/AssetUtil.dart';
import 'package:DOF/util/Constant.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SetupSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SetupSplashScreen> {
  bool downloading = false;
  int progress =0;
  String downloadingText;

  ResponseData data;
  startTime() async {
    navigationPage();
  }

  void navigationPage() {
    Navigator.of(context).pop(SETUP_SPLASH);
    Navigator.of(context).pushNamed(VIDEO_SPALSH, arguments: data);
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 10),
        () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();

          String jsonData = preferences.get(SETTINGS_DATA);
          if(jsonData == null) {
            ApiBaseHelper().get('').then((value)  async {
              data = ResponseData.fromJson(value);
              String path = (await getApplicationDocumentsDirectory()).path;
              data.data.settings.videoPathLocal = await preferences.getString(data.data.settings.videoLink);
              if (data.data.settings.videoPathLocal == null) {
                setState(() {
                  downloadingText = 'Downloading video resources ';
                  downloading = true;
                  progress = 0;
                });
                data.data.settings.videoPathLocal = (await downloadAssets(
                    data.data.settings.videoLink, 'dof_splash.mp4', path, (rec,
                    total) {
                  print("Rec: $rec , Total: $total");

                  setState(() {
                    downloading = true;
                    progress = double.parse((rec / total * 100).toString()).floor();
                  });
                }));
                preferences.setString(data.data.settings.videoLink, data.data.settings.videoPathLocal);
              }

              for (Menu menu in data.data.sideMenu){
                setState(() {

                  downloadingText = 'Downloading icon resources ';
                  downloading = true;
                  progress = 0;
                });
                menu.iconLocalPath = (await downloadAssets(
                    menu.icon, '${menu.title}_side', path, (rec, total) {
                  print("Rec: $rec , Total: $total");

                  setState(() {
                    downloading = true;
                    progress = double.parse((rec / total * 100).toString()).floor();
                  });
                }));
                preferences.setString(menu.icon, menu.iconLocalPath);
                data.data.allMenuData[menu.title]= menu;
              }

              for (Menu menu in data.data.bottomMenu){
                setState(() {
                  downloadingText = 'Downloading icon resources ';
                  downloading = true;
                  progress = 0;
                });
                menu.iconLocalPath = (await downloadAssets(
                    menu.icon, '${menu.title}_bottom', path, (rec, total) {
                  print("Rec: $rec , Total: $total");

                  setState(() {
                    downloading = true;
                    progress = double.parse((rec / total * 100).toString()).floor();
                  });
                }));
                preferences.setString(menu.icon, menu.iconLocalPath);
                data.data.allMenuData[menu.title]= menu;
              }
              if (data.data.bottomMenu[2].title != 'Home') {
                data.data.bottomMenu.insert(2, Menu(title: 'Home'));
              }

              for (MainLogos logo in data.data.mainLogos){
                setState(() {

                  downloadingText = 'Downloading logo resources ';
                  downloading = true;
                  progress = 0;
                });
                logo.logoLocalPath = (await downloadAssets(
                    logo.logo, '${logo.name}_logo', path, (rec, total) {
                  print("Rec: $rec , Total: $total");

                  setState(() {
                    downloading = true;
                    progress = double.parse((rec / total * 100).toString()).floor();
                  });
                }));
                preferences.setString(logo.logo, logo.logoLocalPath);
              }
              preferences.setString(SETTINGS_DATA, jsonEncode(data.toJson()));
              startTime();
            });
          } else{
            print('no need to call api!');
            data = ResponseData.fromJson(jsonDecode(jsonData));
            data.data.settings.videoPathLocal =  preferences.getString(data.data.settings.videoLink);
            for (Menu menu in data.data.sideMenu){
              menu.iconLocalPath =  preferences.getString(menu.icon);
              data.data.allMenuData[menu.title]= menu;
            }

            for (Menu menu in data.data.bottomMenu){
              menu.iconLocalPath =  preferences.getString(menu.icon);
              data.data.allMenuData[menu.title]= menu;
            }
            if (data.data.bottomMenu[2].title != 'Home') {
              data.data.bottomMenu.insert(2, Menu(title: 'Home'));
            }
            for (MainLogos logo in data.data.mainLogos){
              logo.logoLocalPath =  preferences.getString(logo.logo);
            }
            startTime();
          }

        }

    );


  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:downloading?
        Center(child: Text('$downloadingText: $progress%')):Container()
      ,
    );
  }
}
