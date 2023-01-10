import 'dart:typed_data';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'dart:io';

class StorageService {
  // Future<void> downloadFile() async {
  //   const filepath = '.' + '/example.txt';
  //   final file = File(filepath);

  //   try {
  //     final result = await Amplify.Storage.downloadFile(
  //       key: 'ExampleKey',
  //       local: file,
  //       onProgress: (progress) {
  //         print('Fraction completed: ${progress.getFractionCompleted()}');
  //       },
  //     );
  //     final contents = result.file.readAsStringSync();
  //     // Or you can reference the file that is created above
  //     // final contents = file.readAsStringSync();
  //     print('Downloaded contents: $contents');
  //   } on StorageException catch (e) {
  //     print('Error downloading file: $e');
  //   }
  // }

  String key = "";

  Future<StorageGetUrlResult?> getUrl(String? key) async {
    try {
      //uploadFile();
      print("calling get url for the key " + key!);

      // ListResult s3List = await Amplify.Storage.list();
      // s3List.items.forEach((element) {
      //   print("element key is" + element.key);
      //   key = element.key;
      // });

      S3GetUrlOptions options =
          S3GetUrlOptions(expiresIn: Duration(seconds: 100000));
      StorageGetUrlResult result =
          await Amplify.Storage.getUrl(key: key, options: options).result;
      print('GetUrl done: ');
      return result;
    } catch (e) {
      print('GetUrl Err: ' + e.toString());
      print(e);
    }
    return null;
  }

  listObjectsFromS3() async {
    try {
      print("calling list objects");
      StorageListResult s3List = await Amplify.Storage.list().result;
      s3List.items.forEach((element) {
        print("element key is" + element.key);
      });
    } catch (e) {
      print("exception occured listing objects" + e.toString());
    }
  }

  uploadFile() async {
    print("upload file continue");
    try {
      //File file = File('/Users/durgakam/Downloads/fc2.jpg');
      final fileName = DateTime.now().toIso8601String();
      final result = await Amplify.Storage.uploadFile(
              localFile: AWSFile.fromPath('/Users/durgakam/Downloads/fc2.jpg'),
              key: "fc2")
          .result;
    } catch (e) {
      print("upload file failed");
      print(e);
    }
  }
}
