// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/services.dart';

class AssetsHelper {
  static Future<bool> isAssetExist(String path) async {
    try {
      return await rootBundle.loadString(path) != null;
    } catch (_) {
      return false;
    }
  }

  //take a name of file and return full path
  // static Future<String> getSaveFilePath(String filename) async {
  //   Directory tempDir = await getTemporaryDirectory();
  //   String tempPath = tempDir.path;
  //   return tempPath + filename;
  // }

  // // get file from assets as file
  // static Future<File> getImageFileFromAssets(String filename) async {
  //   final byteData = await rootBundle.load('assets/images/$filename');

  //   final filePath = await getSaveFilePath(filename);
  //   final file = File(filePath);
  //   await file.writeAsBytes(byteData.buffer
  //       .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  //   return file;
  // }
}
