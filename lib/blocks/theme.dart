// import 'package:flutter/material.dart';

// class ThemeChanger with ChangeNotifier {
//   ThemeData _themeData;

//   ThemeChanger(this._themeData);

//   getTheme() => _themeData;
//   setTheme(ThemeData theme) {
//     _themeData = theme;

//     notifyListeners();
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:insta_clone/blocks/theme.dart';
// import 'package:insta_clone/onboarding.dart';
// import 'package:provider/provider.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<ThemeChanger>(
//         create: (_) => ThemeChanger(ThemeData.dark()),
//         child: MaterialAppWithTheme());
//   }
// }

// class MaterialAppWithTheme extends StatelessWidget {
//   const MaterialAppWithTheme({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Provider.of<ThemeChanger>(context);
//     return MaterialApp(home: Onboard(),theme: theme.getTheme(),
//     );
//   }
// }
