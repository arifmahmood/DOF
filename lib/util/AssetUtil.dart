import 'dart:io';

import 'package:DOF/network/NetworkCall.dart';

Future<String> downloadAssets(String url, String name, String _dir, var onReceiveProgress) async {
  var file = File('$_dir/$name');
  if (!await _hasToDownloadAssets(file)) {
    return file.path;
  }
  var filePath = await ApiBaseHelper().downloadFile(
      url,
      name,
      _dir, onReceiveProgress);
  return filePath;

}

Future<bool> _hasToDownloadAssets(File file) async {
  return !(await file.exists());
}
