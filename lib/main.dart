import 'package:flutter/material.dart';
import 'package:chatapp/screens/home_screen.dart';

void main() => runApp( MaterialApp(
  home: HomeScreen() ,
  title: 'Lota Chat App',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.red,
      colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: Colors.lime)
  ),
));