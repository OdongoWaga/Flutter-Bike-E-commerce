import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Widget _showTitle() {
    return Text(
      'Register',
      style: Theme.of(context).textTheme.headline,
    );
  }

  Widget _showUsername() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Username',
          hintText: 'Enter Username, min length 6',
          icon: Icon(Icons.face, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _showEmail() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
          hintText: 'Enter valid email',
          icon: Icon(Icons.mail, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _showPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'password',
          hintText: 'Enter password, min length 6',
          icon: Icon(Icons.lock, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _showButtons() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text(
              'Submit',
              style: Theme.of(context)
                  .textTheme
                  .body1
                  .copyWith(color: Colors.black),
            ),
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Existing User? Login'),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: <Widget>[
                  _showTitle(),
                  _showUsername(),
                  _showEmail(),
                  _showPassword(),
                  _showButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
