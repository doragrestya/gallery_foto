import 'package:flutter/material.dart';
import 'package:galery_foto/foto.dart';
import 'album_foto.dart';

void main() => runApp(MaterialApp(
  home: AlbumPage(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    iconTheme: IconThemeData(color: Colors.white)
  ),
));

