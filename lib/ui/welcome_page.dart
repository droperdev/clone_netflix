import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login_page.dart';

const _redColor = Color(0xFFE50913);
const _greyColor = Colors.grey;

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      decoration: _current == 3
          ? BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef",
                ),
                fit: BoxFit.cover,
              ),
            )
          : BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
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
          Expanded(
            child: CarouselSlider(
              carouselController: buttonCarouselController,
              items: [1, 2, 3, 4].map(
                (i) {
                  return Builder(builder: (context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new Image.asset(
                            'assets/logo.png',
                            height: 60.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Tú decides cómo lo ves',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'En tu teléfono, tablet, computadora y TV \n sin costo extra.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                },
              ).toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: false,
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
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 2.0,
                ),
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
