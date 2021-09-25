import 'package:flutter/material.dart';
import 'package:login_ui_design/models/http_exception.dart';
import 'package:login_ui_design/providers/auth.dart';
import 'package:login_ui_design/screens/intro.dart';
import 'package:provider/provider.dart';
import 'login_screen.dart';

// enum to define if it's login or signup
enum AuthMode { Login, SignUp }
Map<String, String> _authData = {
  'email': '',
  'password': '',
};
var _passwordController = TextEditingController();

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  AuthMode _authMode = AuthMode.SignUp;

  var _isLoading = false;

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    FocusScope.of(context).unfocus();
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    try {
      if (_authMode == AuthMode.Login) {
        await Provider.of<Auth>(context, listen: false)
            .login(_authData['email'], _authData['password']);
      } else {
        await Provider.of<Auth>(context, listen: false)
            .Signup(_authData['email'], _authData['password']);
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroScreen()),
      );
    } on HttpException catch (error) {
      var errorMessage = 'Authentication Faild';
      if (error.toString().contains('EMAIL_EXISTS')) {
        errorMessage = 'this email address already in use';
      } else if (error.toString().contains('INVALID_EMAIL')) {
        errorMessage = 'this is not a valid email_address';
      } else if (error.toString().contains('WEAK_PASSWORD')) {
        errorMessage = 'this Password is too weak';
      } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
        errorMessage = 'could not find user with this email';
      } else if (error.toString().contains('INVALID_PASSWORD')) {
        errorMessage = 'Invalid password';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      const errorMessage = "could not authenticate,try again later.";
      _showErrorDialog(errorMessage);
    }

    setState(() {
      _isLoading = false;
    });
  }

  void _showErrorDialog(String errorMessage) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(errorMessage),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Okay'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(90)),
                      color: Colors.black38,
                      gradient: LinearGradient(
                        colors: [(Colors.black38), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Image.asset(
                              "images/app_logo.png",
                              height: 90,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 20),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Register",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        FirstNameField(),
                        LastNameField(),
                        EmailField(),
                        PhoneNumField(),
                        PasswordField(),
                        GestureDetector(
                          onTap: () {
                            // Write Click Listener Code Here.
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 35),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            height: 54,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [(Colors.black38), Colors.black],
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
                                setState(() {
                                  _submit();
                                });
                              },
                              child: Text(
                                "REGISTER",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Have Already Member?  "),
                        GestureDetector(
                          child: Text(
                            "Login Now",
                            style: TextStyle(color: Colors.blue),
                          ),
                          onTap: () {
                            // Write Tap Code Here.
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xffEEEEEE),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 20), blurRadius: 100, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        obscureText: true,
        decoration: InputDecoration(
          focusColor: Colors.black,
          icon: Icon(
            Icons.vpn_key,
            color: Colors.black,
          ),
          hintText: "Enter Password",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        controller: _passwordController,
        validator: (val) {
          if (val.isEmpty || val.length < 5) {
            return 'password is too short';
          }
          return null;
        },
        onSaved: (val) {
          _authData['password'] = val;
        },
      ),
    );
  }
}

class PhoneNumField extends StatelessWidget {
  const PhoneNumField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xffEEEEEE),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 20), blurRadius: 100, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          focusColor: Colors.black,
          icon: Icon(
            Icons.phone,
            color: Colors.black,
          ),
          hintText: "Phone Number",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10), blurRadius: 50, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            color: Colors.black,
          ),
          hintText: "Email",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (val) {
          if (val.isEmpty || !val.contains('@')) {
            return 'Invalid Email';
          }
          return null;
        },
        onSaved: (val) {
          _authData['email'] = val;
        },
      ),
    );
  }
}

class LastNameField extends StatelessWidget {
  const LastNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10), blurRadius: 50, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextField(
        cursorColor: Colors.black38,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          hintText: "Last Name",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}

class FirstNameField extends StatelessWidget {
  const FirstNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20, top: 35),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10), blurRadius: 50, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextField(
        cursorColor: Colors.black38,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          hintText: "First Name",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
