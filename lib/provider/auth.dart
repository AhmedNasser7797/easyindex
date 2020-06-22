import 'dart:convert';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;
  Timer _authTimer;
  FirebaseUser user;

  bool get isAuth {
    return token != null;
  }

  String get token {
    if (_expiryDate != null &&
        _expiryDate.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }
    return null;
  }

  String get userId {
    return _userId;
  }

  Future<void> _authenticate(String email, String password, String type) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    if (type == 'login') {
      FirebaseUser authUser = (await _auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
      this.user = authUser;
    } else {
      FirebaseUser authUser = (await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      this.user = authUser;
    }

    try {
      _token = user.getIdToken().toString();
      _userId = user.uid;

      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(
        {
          'token': _token,
          'userId': _userId,
        },
      );
      prefs.setString('userData', userData);
    } catch (error) {
      throw error;
    }
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, 'signup');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'login');
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    final extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    _token = extractedUserData['token'];
    _userId = extractedUserData['userId'];
    notifyListeners();
    return true;
  }

  Future<void> logout() async {
    _token = null;
    _userId = null;

    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
