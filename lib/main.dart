import 'package:flutter/material.dart';
import 'home.dart';
import 'calendar.dart';
import 'history.dart';
import 'homepage.dart';
import 'currencyExchange.dart';
import 'registration_page.dart';

// dart --no-sound-null-safety run
//  flutter run --no-sound-null-safety
//flutter clean
//flutter pub get

// void main() {
//   runApp(
//     const MyApp(),
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//   State<StatefulWidget> createState() {
//     // TODO: implement createState

//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: const Text('ASTU'),
      accountEmail: const Text('Ethiopian@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,

        //child: FlutterLogo(size: 42.0),
        child: Image.asset(
          "images/flag.jpg",
        ),
      ),
      otherAccountsPictures: const <Widget>[
        CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Text('A'),
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          child: Text('B'),
        )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: const Text('Ethiopian Calender'),
          //onTap: () => MyCustomUI(),
          onTap: () => Navigator.of(context).push(_NewPage1()),
        ),
        ListTile(
          title: const Text('Currency Exchange'),
          onTap: () => Navigator.of(context).push(_NewPage2()),
        ),
        ListTile(
          title: const Text('History of Ethiopia'),
          onTap: () => Navigator.of(context).push(_NewPage3()),
        ),
        ListTile(
          title: const Text('Tourist Attraction'),
          onTap: () => Navigator.of(context).push(_NewPage4()),
        ),
        // ListTile(
        //   title: const Text('Map'),
        //   onTap: () => Navigator.of(context).push(_NewPage5()),
        // ),
        ListTile(
          title: const Text('Feedback'),
          onTap: () => Navigator.of(context).push(_NewPage6()),
        ),
      ],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Ethiopia Land Of Beauty'),
        ),
        body: homePage(),
        drawer: Drawer(
          child: drawerItems,
        ),
      ),
    );
  }
}

// <void> means this route returns nothing.
class _NewPage1 extends MaterialPageRoute<void> {
  _NewPage1()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Ethiopian Calendar '),
                elevation: 1.0,
              ),
              body: const DialogsExample(),
              // body: Center(
              //   child: Text('Page $id'),
              // ),
            );
          },
        );
}

// <void> means this route returns nothing.
class _NewPage2 extends MaterialPageRoute<void> {
  _NewPage2()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Currency Exchange '),
                elevation: 1.0,
              ),
              body: Currency(),
              // ignore: prefer_const_constructors
              //body: CurrecyConverter(),
              // body: Center(
              //   child: Text('Page $id'),
              // ),
            );
          },
        );
}

// <void> means this route returns nothing.
class _NewPage3 extends MaterialPageRoute<void> {
  _NewPage3()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('History of Ethiopia '),
                elevation: 1.0,
              ),
              body: History(),
              // body: Center(
              //   child: Text('Page $id'),
              // ),
            );
          },
        );
}

// <void> means this route returns nothing.
class _NewPage4 extends MaterialPageRoute<void> {
  _NewPage4()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Tourist Attraction '),
                elevation: 1.0,
              ),
              body: History(),
              // body: Center(
              //   child: Text('Page $id'),
              // ),
            );
          },
        );
}

// <void> means this route returns nothing.
// class _NewPage5 extends MaterialPageRoute<void> {
//   _NewPage5()
//       : super(
//           builder: (BuildContext context) {
//             return Scaffold(
//               appBar: AppBar(
//                 title: const Text('Map '),
//                 elevation: 1.0,
//               ),
//               body: MyCustomUI(),
//               // body: Center(
//               //   child: Text('Page $id'),
//               // ),
//             );
//           },
//         );
// }

// <void> means this route returns nothing.
class _NewPage6 extends MaterialPageRoute<void> {
  _NewPage6()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Feedback '),
                elevation: 1.0,
              ),
              //body: homePage()
              body: RegistrationPage(),
              //body: MyCustomLoginUI(),
              // body: Center(
              //   child: Text('Page $id'),
              // ),
            );
          },
        );
}
