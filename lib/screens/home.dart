import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_design/providers/auth.dart';
import 'package:login_ui_design/screens/login_screen.dart';
import 'package:login_ui_design/screens/splash_screen.dart';
import 'package:login_ui_design/screens/treatment.dart';
import 'package:login_ui_design/widgets/app_drawer.dart';
import 'package:provider/provider.dart';
import 'homeremedias.dart';
import '../widgets/image_picker.dart';
import 'login_screen.dart';

String res = "Aim Of Application";
String res_2 = "text";

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _home();
}

class _home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<Auth>(
          builder: (ctx, auth, _) {
            return auth.isAuth
                ? HomePage()
                : FutureBuilder(
                    future: auth.tryAutoLogin(),
                    builder: (ctx, AsyncSnapshot authSnapShot) =>
                        authSnapShot.connectionState == ConnectionState.waiting
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : LoginScreen(),
                  );
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/app_logo.png",
              width: 150.0,
              height: 150.0,
            ),
            SizedBox(
              height: 70.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 25.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black26, Colors.black],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PickImage()));
                },
                child: Text(
                  "Dignose yourself",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 45.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black26, Colors.black],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tratment()));
                },
                child: Text(
                  "Treatment",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 27.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black26, Colors.black],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeRemedias()));
                },
                child: Text(
                  "Home remedias",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
