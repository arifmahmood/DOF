import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DOF/network/NetworkCall.dart';
import 'package:DOF/network/response/ResponseData.dart';
import 'package:DOF/util/Constant.dart';
import 'package:video_player/video_player.dart';

class VideoSplashScreen extends StatefulWidget {
  ResponseData data;

  @override
  VideoState createState() => VideoState(data);

  VideoSplashScreen(@required this.data);
}

class VideoState extends State<VideoSplashScreen> {
  VideoPlayerController playerController;
  VoidCallback listener;
  ResponseData data;


  VideoState(this.data);

  @override
  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
    initializeVideo();
    playerController.play();

    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 10);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    Navigator.of(context).pop(VIDEO_SPALSH);
    Navigator.of(context).pushNamed(HOME_SCREEN, arguments: data);
  }

  void initializeVideo() {

    playerController =
        VideoPlayerController.file(File(data.data.settings.videoPathLocal))
          ..addListener(listener)
          ..setVolume(1.0)
          ..initialize()
          ..play();
  }

  @override
  void deactivate() {
    if (playerController != null) {
      playerController.setVolume(0.0);
      playerController.removeListener(listener);
    }
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if (playerController != null) playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
        playerController != null && playerController.value.initialized
        ? new AspectRatio(
          aspectRatio: playerController.value.aspectRatio,
          child: Container(
            child:  VideoPlayer(
                    playerController,
                  ),
          )): Container(),
    ]));
  }
}
