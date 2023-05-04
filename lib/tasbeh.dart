import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  static const String routeName = "TasbehTab";

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
    'لا حول ولا قوه الا بالله'
  ];

  int index = 0;

  double angle = 0;

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/background_image.png',
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text(
                'سبحة',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: Container(
                width: double.infinity,
                child: Column(children: [
                  Center(
                      child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset('assets/images/sebha1.png'),
                      GestureDetector(
                        onTap: () {
                          onClicked();
                        },
                        child: Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .07),
                            child: Transform.rotate(
                                angle: angle,
                                child: Image.asset(
                                    'assets/images/body_sebha.png'))),
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      'عدد التسبيحات',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 70,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0XFFB9824F).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$counter',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0XFFB7935F),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      '${tasbeh[index]}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ])))
      ],
    );
  }

  void onClicked() {
    counter++;

    if (counter % 34 == 0) {
      index++;
    }
    if (counter == 34) {
      counter = 1;
    }
    if (index == tasbeh.length) {
      index = 0;
    }
    angle += 2 / 34;
    setState(() {});
  }
}
