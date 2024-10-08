import 'package:flutter/material.dart';
import 'package:inner_curved_circle/inner_curved_circle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Inner Curved Circle'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipPath(
            clipper: InwardTopCurveClipper(),
            child: Container(
              width: double.infinity,
              height: size.height * 0.3,
              padding: EdgeInsets.fromLTRB(20, size.height * 0.12, 20, 20),
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white, size: size.width * 0.1),
                  Text(
                    'Inner Curved Circle',
                    style: TextStyle(
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
