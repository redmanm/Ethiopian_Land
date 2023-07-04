import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//jimma History********************************************************************************************

// _launchURL() async {
//   final Uri url = Uri.parse('https://flutter.dev');
//   if (!await launchUrl(url)) {
//     throw Exception('Could not launch $_url');
//   }
// }

class DetailHistoryOfJima extends StatelessWidget {
  const DetailHistoryOfJima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('JIMMA ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/jima.jpg"),
            titleSection1,
            buttonSection1,
            textSection1
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection1 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn1('MAP'),
  ],
);

Column _buildButtonColumn1(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection1 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'King Abba Jifar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Jimma, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection1 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Looking more out of America’s Wild West than the Kafa kingdom,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************

// ElevatedButton(
//             child: const Text("Twitter 1"),
// onPressed: () async {
//   final url = 'https://twitter.com';
//   if (await canLaunch(url)) {
//     await launch(url,
//         //forceSafariVC: false,
//         forceWebView: true,
//         enableJavaScript: true);
//   }
//             },
//           ),

//  ElevatedButton(
//             child: const Text("Call 2"),
//             onPressed: () async {
//               final phoneNumber = '+251940930471';
//               final url = 'tel:$phoneNumber';
//             },
//           ),

// ElevatedButton(
//   onPressed: () async {
//     final email = Uri(
//       scheme: 'mailto',
//       path: 'codoweb.tech@gmail.com',
//       query: 'subject=Hello&body=Test',
//     );
//     if (await canLaunchUrl(email)) {
//       launchUrl(email);
//     } else {
//       throw 'Could not launch $email';
//     }
//   },
//   child: const Text('Email'),
// ),
// ElevatedButton(
//   onPressed: () async {
//     final call = Uri.parse('tel:+91 9830268966');
//     if (await canLaunchUrl(call)) {
//       launchUrl(call);
//     } else {
//       throw 'Could not launch $call';
//     }
//   },
//   child: const Text('Call'),
// ),

class DetailHistoryOfBlueNile extends StatelessWidget {
  const DetailHistoryOfBlueNile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('BLUE NILE ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/blue_nile.jpg"),
            titleSection2,
            buttonSection2,
            textSection2
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection2 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn2('MAP'),
  ],
);

Column _buildButtonColumn2(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection2 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Blue Nile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Blue Nile, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection2 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Blue Nile In Ethiopia One Of the known....,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfBahirdar extends StatelessWidget {
  const DetailHistoryOfBahirdar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Ethiopia ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/bahirdar.jpg"),
            titleSection3,
            buttonSection3,
            textSection3
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection3 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn3('MAP'),
  ],
);

Column _buildButtonColumn3(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection3 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Ethiopia',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Ethiopia, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection3 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Addis abeba is the the City Which found in Ethiopia,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfBenishangul extends StatelessWidget {
  const DetailHistoryOfBenishangul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Benishangul ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/benish.jpg"),
            titleSection4,
            buttonSection4,
            textSection4
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection4 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn4('MAP'),
  ],
);

Column _buildButtonColumn4(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection4 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Benishangul',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Benishangul, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection4 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Benishangul ...,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfVolcano extends StatelessWidget {
  const DetailHistoryOfVolcano({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Ethiopia ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/d_volca_danakil.jpg"),
            titleSection5,
            buttonSection5,
            textSection5
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection5 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn5('MAP'),
  ],
);

Column _buildButtonColumn5(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection5 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Volcano',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Danakile, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection5 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Volvano Found In Ethiopia...,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfEthioForset extends StatelessWidget {
  const DetailHistoryOfEthioForset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Ethiopian ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/forest.jpg"),
            titleSection6,
            buttonSection6,
            textSection6
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection6 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn6('MAP'),
  ],
);

Column _buildButtonColumn6(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection6 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Ethio Forest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Forest, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection6 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Forest Which found In Ethiopia...,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfFlag extends StatelessWidget {
  const DetailHistoryOfFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Ethiopia',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/flag.jpg"),
            titleSection7,
            buttonSection7,
            textSection7
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection7 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn7('MAP'),
  ],
);

Column _buildButtonColumn7(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection7 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Ehio Flag',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Flag, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection7 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Ethiopian Flag....,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfCoffe extends StatelessWidget {
  const DetailHistoryOfCoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Buna ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/jabana.jpg"),
            titleSection8,
            buttonSection8,
            textSection8
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection8 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn8('MAP'),
  ],
);

Column _buildButtonColumn8(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection8 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Coffee',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Buna, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection8 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Ethiopian Coffee is One of the...,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfAndinetPark extends StatelessWidget {
  const DetailHistoryOfAndinetPark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Andinet Park ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/andinetpark.jpg"),
            titleSection9,
            buttonSection9,
            textSection9
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection9 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn9('MAP'),
  ],
);

Column _buildButtonColumn9(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection9 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Andinet Park',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Addis Abeba, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection9 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Andinet Park...,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);

//jimma History********************************************************************************************
//jimma History********************************************************************************************
//jimma History********************************************************************************************

class DetailHistoryOfAddisAbeba extends StatelessWidget {
  const DetailHistoryOfAddisAbeba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          // systemOverlayStyle: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Shager ',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
        body: Column(
          children: [
            Image.asset("images/addis.jpg"),
            titleSection0,
            buttonSection0,
            textSection0
          ],
        )

        //child: Text('Page'),
        );
  }
}

Widget buttonSection0 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn0('MAP'),
  ],
);

Column _buildButtonColumn0(String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          color: const Color.fromARGB(255, 4, 102, 240),
          onPressed: () async {
            final url = 'https://maps.app.goo.gl/nY9sD5G8L3US13Au9';
            final urls = 'tel:+251940930371';
            if (await canLaunch(url)) {
              await launch(url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true);
            }
          },
          icon: Icon(Icons.maps_home_work_outlined)),

      // Icon(icon, color: const Color.fromARGB(255, 4, 102, 240)),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 4, 102, 240)),
        ),
      ),
    ],
  );
}

Widget titleSection0 = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Addis Abeba',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Addis Abeba, Ethiopia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100M'),
    ],
  ),
);

Widget textSection0 = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Addis Abeba Is the capital City Of Ethiopa...,'
    'the increasingly fragile Palace of Abba Jiffar looks as if a strong '
    'wind could blow it away. It sits atop a hill 7km '
    'northeast of Jimma town centre, near the village of Jiren,'
    'and has views back down over Jimma that are worth '
    'the price of admission alone. To get here either take a'
    'minibus (Birr8) from the marketplace in town or contract a'
    'taxi for the visit (Birr200, including waiting time).'
    'King Jiffar (1852–1933), who was one of the most important Kafa kingdom rulers,'
    'held power at the end of the 19th century. The palace contains a private family'
    'mosque (still in use) and rooms that served as library, throne room, reception'
    'chamber, king’s guard room, sentry tower, courthouse and guesthouse.'
    'Almost 1.6km back down the hill lies the kings tomb.',
    softWrap: true,
  ),
);
