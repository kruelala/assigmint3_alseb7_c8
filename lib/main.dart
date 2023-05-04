import 'package:flutter/material.dart';

import 'tasbeh.dart';

void main() {
  runApp(myApplication());
}

class myApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: TasbehTab.routeName,
      routes: {
        TasbehTab.routeName: (context) => TasbehTab(),
      },
    );
  }
}

