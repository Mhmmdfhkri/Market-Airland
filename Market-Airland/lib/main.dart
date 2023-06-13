import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:aplikasitest1/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(key:UniqueKey()),
  ));
}
