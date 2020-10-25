import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

const _redColor = Color(0xFFE50913);
const _greyColor = Colors.grey;
void main() {
  runApp(CloneNetflix());
}

class CloneNetflix extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone Netflix',
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: IconButton(
          icon: new Image.asset(
            'assets/logo.png',
            height: 48,
          ),
          onPressed: null,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Center(
              child: Text(
                'PRIVACIDAD',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Center(
              child: Text(
                'AYUDA',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 8.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  print('Navigation Login');
                },
                child: Text(
                  'INICIAR SESIÓN',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: ContentWelcome(),
    );
  }
}

class ContentWelcome extends StatefulWidget {
  @override
  _ContentWelcomeState createState() => _ContentWelcomeState();
}

class _ContentWelcomeState extends State<ContentWelcome> {
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: buttonCarouselController,
              items: [1, 2, 3, 4].map(
                (i) {
                  return Builder(builder: (context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  });
                },
              ).toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height,
                  onPageChanged: (index, _) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [1, 2, 3, 4].map((e) {
              var index = [1, 2, 3, 4].indexOf(e);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? _redColor : _greyColor,
                ),
              );
            }).toList(),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: 48,
            child: RaisedButton(
              color: Color(0xFFE50913),
              child: Text(
                "COMIENZA YA",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
