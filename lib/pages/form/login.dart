import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  List data = [];
  var valData;

  @override
  void initState() {
    super.initState();
    getCallingCode();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.all(20.0),
        child: Flex(
          direction: Axis.vertical,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: Flex(
            //       direction: Axis.vertical,
            //       children: [
            //         Container(
            //           width: 80.0,
            //           height: 80.0,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(15.0),
            //             color: Colors.lightBlue,
            //           ),
            //         ),
            //         Container(child: Text('data \nsaya'))
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 36,
              child: Row(
                // direction: Axis.horizontal,
                children: [
                  Text('data'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80.0,
                  child: DropdownButtonFormField(
                    items: data.map((e) {
                      return DropdownMenuItem(
                        child: Text.rich(e['dial_code']),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {});
                      valData = value;
                    },
                    value: valData,
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Ketik Nomer',
                      // contentPadding: const EdgeInsets.only(
                      //   left: 15.0,
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3.5, color: Color(0xFF0C8913)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.6, color: Colors.black87),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getCallingCode() async {
    final respon = await http.get(Uri.parse(
        'https://gist.githubusercontent.com/anubhavshrimal/75f6183458db8c453306f93521e93d37/raw/f77e7598a8503f1f70528ae1cbf9f66755698a16/CountryCodes.json'));

    if (respon.statusCode == 200) {
      // final val = ;
      setState(() {
        data = jsonDecode(respon.body);
      });
    }
  }
}
