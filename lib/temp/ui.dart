import 'dart:convert';
import 'dart:typed_data';
import 'package:demo_api_intigration/temp/DatabaseHelper.dart';
import 'package:demo_api_intigration/temp/modelclass';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

DBHelper? dbHelper;

class visiableScreen extends StatelessWidget {

pickImageFromGallery() {
    ImagePicker().pickImage(source: ImageSource.gallery).then((imgFile) async {
        String imgString = Utility.base64String(await imgFile!.readAsBytes());
        print(imgString);
        photo photo1 = photo(0, imgString);
        dbHelper?.save(photo1);
        // refreshImages();
    });
}


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    body: gridView()
   );
  }
  
}
gridView(){
    var images;
    return Padding(
            padding: EdgeInsets.all(5.0),
            child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: images.map((photo) {
            print("photo name");
            print(photo.photoName);
            return Utility.imageFromBase64String(photo.photoName ?? "");
    }).toList(),
    ),
    );
}

class Utility {
    static Image imageFromBase64String(String base64String) {
        return Image.memory(
                base64Decode(base64String),
                fit: BoxFit.fill,
);
    }
    static Uint8List dataFromBase64String(String base64String) {
        return base64Decode(base64String);
    }
    static String base64String(Uint8List data) {
        return base64Encode(data);
    }
}