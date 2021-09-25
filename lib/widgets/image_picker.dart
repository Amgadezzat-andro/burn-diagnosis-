

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_ui_design/screens/result.dart';

class PickImage extends StatefulWidget {
  PickImage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PickImageState createState() => _PickImageState();
  pickImage({ImageSource source}) async {}
}

class _PickImageState extends State<PickImage> {
  File profilePicture;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'select image',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Result()));
        },
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.fitWidth),
        ),
        margin: EdgeInsets.only(top: 20, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Please select the image of the burn', style: TextStyle(fontSize: 20, color: Colors.indigo),),
            Padding(padding: EdgeInsets.only(bottom: 20.0)),
            profilePicture == null
                ? Container()
                : Container(
              width: deviceSize.width,
              height: deviceSize.height * 0.28,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(profilePicture),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 20.0)),

            FloatingActionButton(
              backgroundColor: Colors.black87,
              child: Icon(
                Icons.add_a_photo
                //color: Colors.white,
                ),
              onPressed: () async {
                await selectPicture();
              },
            ),



          ],
        ),
      ),
    );
  }
  Future<void> selectPicture() async {
    //final ImagePicker _picker = ImagePicker();
    final File image = await ImagePicker.pickImage(source: ImageSource.camera);
    final File imagee = await ImagePicker.pickImage(source: ImageSource.gallery);


    setState(() {
      profilePicture = File(imagee.path);

    });

    setState(() {
      profilePicture = File(image.path);

    });
  }
}