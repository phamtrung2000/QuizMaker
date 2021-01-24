import 'package:flutter/material.dart';
import 'package:quizmaker/Helper/functions.dart';
import 'package:quizmaker/services/auth.dart';
import 'package:quizmaker/services/database.dart';
import 'package:quizmaker/views/signin.dart';
import 'package:quizmaker/widgets/widgets.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String name, email, password;

  AuthService authService = new AuthService();

  bool _isLoading = false;

  String validateEmail(String Email) {
    try {
      String hople1 = '@gmail.com';
      String hople2 = '@yahoo.com';
        if (Email.length < 10 )
        {
          return 'Email không được dưới 10 ký tự';
        }
        else  if (Email.contains(hople1) == false && Email.contains(hople2) == false)
        {
          return 'Email không hợp lệ (không có @.gmailcom, @yahoo.com, ....)';
        }
        else
          return null;
    }
    catch (e) {
      return 'Email đã tồn tại';
    }
  }

  String validateMatKhau(String inputAge) {
    try {
      if (inputAge.length < 6) {
        return 'Mật khẩu không được dưới 6 ký tự';
      } else {
        return null;
      }
    }
    catch (e) {
      return 'Mật khẩu đã tồn tại';
    }
  }

  signUp() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });
      authService.signUpWithEmailAndPassword(email, password).then((val) {
        if (val != null) {
          setState(() {
            _isLoading = false;
          });
          HelperFuncionts.saveUserLoggedInDetails(isLoggedIn: true);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home(val.name)));
          AddUser(name);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                // color: Colors.blue,
                child: Column(
                  children: [
                    Spacer(),
                    TextFormField(
                      validator: (val) {
                        return val.isEmpty ? "Nhập Họ và Tên" : null;
                      },
                      decoration: InputDecoration(hintText: "Vui lòng nhập họ tên", labelText: "Tên"),
                      onChanged: (val) {
                        name = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      validator: validateEmail,
                      decoration: InputDecoration(hintText: "Vui lòng nhập Email", labelText: "Email"),
                      onChanged: (val) {
                        email = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: validateMatKhau,
                      decoration: InputDecoration(hintText: "Vui lòng nhập Mật khẩu", labelText: "Mật khẩu"),
                      onChanged: (val) {
                        password = val;
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),

                    // nút đăng nhập
                    GestureDetector(
                        onTap: () {
                          signUp();
                        },
                        child: blueButton(context: context, label: "Sign Up")),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Đã có tài khoản? ",
                          style: TextStyle(fontSize: 15.5),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Text(
                            "Đăng nhâp",
                            style: TextStyle(
                                fontSize: 15.5,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height/20,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
