import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_ecommerce/models/app_state.dart';

/* User Action */

ThunkAction<AppState> getUserAction = (Store<AppState> store) async {
  final prefs = await SharedPreferences.getInstance();

  final String storedUser = prefs.getString('user');
  final user = storedUser != null ? json.decode(storedUser) : null;

  store.dispatch(GetUserAction(user));
};

class GetUserAction {
  final dynamic _user;

  dynamic get user => this._user;

  GetUserAction(this._user);
}
