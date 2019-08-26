import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/login.dart';
import 'package:flutter_ecommerce/pages/products_page.dart';
import 'package:flutter_ecommerce/pages/register.dart';
import 'package:flutter_ecommerce/redux/reducers.dart';
import 'package:redux/redux.dart';
import 'models/app_state.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'redux/actions.dart';

void main() {
  final store = Store<AppState>(appReducer,
      initialState: AppState.initial(), middleware: [thunkMiddleware]);
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Soko E-commerce',
        routes: {
          '/login': (BuildContext context) => LoginPage(),
          '/register': (BuildContext context) => RegisterPage(),
          '/products': (BuildContext context) => ProductsPage(onInit: () {
                StoreProvider.of<AppState>(context).dispatch(getUserAction);
                //dispatch an action (getUserAction) to grab user data
              }),
        },
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.cyan[400],
          accentColor: Colors.deepOrange[200],
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 18.0),
          ),
        ),
        home: RegisterPage(),
      ),
    );
  }
}
