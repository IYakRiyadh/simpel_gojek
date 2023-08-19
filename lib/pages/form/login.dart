import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class IntroUser extends StatefulWidget {
  const IntroUser({super.key});

  @override
  State<IntroUser> createState() => _IntroUserState();
}

class _IntroUserState extends State<IntroUser> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider.builder(
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      child: Column(
                        // direction: Axis.vertical,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/ilus/img1.jpg'),
                                  fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 15, right: 20, bottom: 15.0),
                            child: Text(
                              'Layanan cepat dan aman',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 0.8,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      width: size.width,
                      margin: EdgeInsets.only(left: 60.0, right: 60.0),
                      child: MaterialButton(
                        // minWidth: 100,
                        height: 40.0,
                        padding: const EdgeInsets.all(8.0),
                        color: const Color(0xFF0C8913),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              width: 2.50,
                              color: Color(0xFF0C8913),
                            )),
                        child: const Text('Masuk sebagai Customer'),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      width: size.width,
                      margin: EdgeInsets.only(left: 60.0, right: 60.0),
                      child: MaterialButton(
                        // minWidth: 100,
                        height: 40.0,
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.white,
                        textColor: const Color(0xFF0C8913),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              width: 2.50,
                              color: Color(0xFF0C8913),
                            )),
                        child: const Text('Masuk sebagai Driver'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
