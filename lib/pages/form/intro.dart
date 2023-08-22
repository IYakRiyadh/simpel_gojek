import 'package:app_gojek/pages/form/login.dart';
import 'package:app_gojek/pages/navigasi/navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class IntroUser extends StatefulWidget {
  const IntroUser({super.key});

  @override
  State<IntroUser> createState() => _IntroUserState();
}

class _IntroUserState extends State<IntroUser> {
  final intro = FirebaseFirestore.instance;
  Stream<QuerySnapshot<Map<String, dynamic>>>? stream;

  @override
  void initState() {
    super.initState();
    stream = intro.collection('intro').snapshots();
  }

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
                StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                    stream: stream,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return const Center(child: Text('No Internet'));
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const Center(child: Text('Loading..'));
                      }
                      final slide =
                          snapshot.data!.docs.map((doc) => doc.data()).toList();

                      return CarouselSlider.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index, realIndex) {
                          var data = slide[index];
                          return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      image: DecorationImage(
                                        image: NetworkImage('${data['img']}'),
                                        fit: BoxFit.fill,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      top: 15,
                                      right: 20,
                                      bottom: 15.0),
                                  child: Text(
                                    '${data['keterangan']}',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 16.5,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          aspectRatio: 4 / 3,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enlargeFactor: 0.5,
                          enlargeCenterPage: true,
                        ),
                      );
                    }),
                const SizedBox(height: 15),
                Column(
                  children: [
                    Container(
                      width: size.width,
                      margin: const EdgeInsets.only(left: 60.0, right: 60.0),
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
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginForm(),
                          ));
                        },
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      width: size.width,
                      margin: const EdgeInsets.only(left: 60.0, right: 60.0),
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
