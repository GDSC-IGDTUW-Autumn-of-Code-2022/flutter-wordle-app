import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class ThemeModel {
  final int index;
  final String title;
  final AssetImage image;
  final Color textColor;

  ThemeModel({required this.index, required this.title, required this.image, required this.textColor});
}

class MultipleThemesViewModel extends BaseViewModel {
  List<ThemeModel> get themes => List<ThemeModel>.generate(
      6,
      (index) => ThemeModel(
            index: index,
            title: _getTitleForIndex(index),
            image: _getAssetImage(index),
            textColor: _getTextColor(index),
          ));

  String _getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return 'Winter';
      case 1:
        return 'Spring';
      case 2:
        return 'Summer';
      case 3:
        return 'Autumn';
      case 4:
        return 'Christmas';
      case 5:
        return 'Halloween';
    }

    return 'No theme for index';
  }

  AssetImage _getAssetImage(int index) {
    switch (index) {
      case 0:
        return const AssetImage('images/winter_theme.jpg');
      case 1:
        return const AssetImage('images/spring_theme.jpg');
      case 2:
        return const AssetImage('images/summer_theme.jpg');
      case 3:
        return const AssetImage('images/autumn_theme.jpg');
      case 4:
        return const AssetImage('images/christmas_theme.jpg');
      case 5:
        return const AssetImage('images/halloween_theme.jpg');
    }

    return const AssetImage('images/winter_theme.jpg');
  }

  Color _getTextColor(int index) {
    switch (index) {
      case 0:
        return Colors.white;
      case 4:
        return Colors.white;
    }
    return Colors.black;
  }
}
