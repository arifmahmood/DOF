import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:xml2json/xml2json.dart';


class ApiBaseHelper {
  final String _baseUrl = "http://35.225.100.231/god-dof/data.xml";
  final myTransformer = Xml2Json();

  Future<dynamic> get(String url) async {
    print('Api Get, url $url');
    var responseJson;
    try {
      final response = await http.get(_baseUrl + url);
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
//      throw FetchDataException('No Internet connection');
    }
    print('api get recieved!');
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        myTransformer.parse(utf8.decode(response.bodyBytes));
        print('XML string');
        print(response.body.toString());
        print('');

        // Transform to JSON using Badgerfish
        var jsonString = myTransformer.toParker();
        print('Parker');
        print('');
        // Transform to JSON using Parker
        print(jsonString);
        var responseJson = json.decode(jsonString);
        print(responseJson);
        return responseJson;
      case 400:
//        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
//        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
//        throw FetchDataException('Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

//  Future<File> downloadFile(String url, String filename, String dir) async {
//    var req = await http.Client().get(Uri.parse(url));
//    var file = File('$dir/$filename');
//    return file.writeAsBytes(req.bodyBytes);
//  }

  Future<String> downloadFile(String url, String filename, String dir, ProgressCallback onReceiveProgress) async {
    Dio dio = Dio();

    try {
      await dio.download(url, "$dir/$filename", onReceiveProgress: onReceiveProgress);
    } catch (e) {
      print(e);
    }
    print("Download completed");
    return "$dir/$filename";
  }
}