import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked/stacked.dart';

import 'multiple_themes_viewmodel.dart';

class MultipleThemesView extends StatelessWidget {
  const MultipleThemesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ViewModelBuilder<MultipleThemesViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            backgroundColor: theme.accentColor,
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.white
            )
        ),
        backgroundColor: theme.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: theme.accentColor,
                  borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                  'Change Theme',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                  )
              ),

            ),

            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: model.themes
                  .map(
                    (themeData) => GestureDetector(
                      onTap: () {
                        getThemeManager(context).selectThemeAtIndex(themeData.index);
                      },
                      child: Container(
                        width: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 35, vertical:5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: themeData.image,
                            fit: BoxFit.cover,
                          ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[100]
                        ),
                        child: Text(
                            themeData.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: themeData.textColor,
                          )
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
        ]
        ),
      ),
      viewModelBuilder: () => MultipleThemesViewModel(),
    );
  }
}
