import 'package:flutter/material.dart';

class AnimatedLoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedLoginPageState();
  }
}

class _AnimatedLoginPageState extends State<AnimatedLoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2),
        reverseDuration: Duration(milliseconds: 400));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _LoginPage(_controller);
  }
}

class _LoginPage extends StatelessWidget {
  double _deviceHeight = 0.0;
  double _deviceWidth = 0.0;

  Color _primaryColor = Color.fromRGBO(125, 191, 211, 1.0);
  Color _secondaryColor = Color.fromRGBO(169, 224, 241, 1.0);

  AnimationController _controller;

  _LoginPage(this._controller) {
    _controller = _controller;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: _primaryColor,
        body: Align(
            alignment: Alignment.center,
            child: Container(
              width: _deviceWidth,
              height: _deviceHeight * 0.60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _avatarWidget(),
                  SizedBox(height: _deviceHeight * 0.05),
                  _emailTextField(),
                  _passwordTextField(),
                  SizedBox(height: _deviceHeight * 0.10),
                  _loginButton()
                ],
              ),
            )));
  }

  Widget _avatarWidget() {
    double _circleD = _deviceHeight * 0.25;
    return Container(
      height: _circleD,
      width: _circleD,
      decoration: BoxDecoration(
          color: _secondaryColor,
          borderRadius: BorderRadius.circular(500),
          image: DecorationImage(
              image: AssetImage('assets/images/main_avatar.png'))),
    );
  }

  Widget _emailTextField() {
    return Container(
        width: _deviceWidth * 0.8,
        child: TextField(
          cursorColor: Colors.white,
          autocorrect: false,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: 'Johndoe@gmail.com',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          ),
        ));
  }

  Widget _passwordTextField() {
    return Container(
        width: _deviceWidth * 0.8,
        child: TextField(
          obscureText: true,
          cursorColor: Colors.white,
          autocorrect: false,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          ),
        ));
  }

  Widget _loginButton() {
    return MaterialButton(
      minWidth: _deviceWidth * 0.38,
      height: _deviceHeight * 0.05,
      color: Colors.white,
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: _secondaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: Colors.white)),
      onPressed: () {},
    );
  }
}
