import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Utils/Nav.dart';
import '../people/people.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: Nav(),
      backgroundColor: Colors.grey[400],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'People app',
                textAlign: TextAlign.center,
              ),
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: <Color>[
                        Colors.green,
                        Colors.transparent,
                      ]),
                ),
                child: Image.network(
                    'https://ik.imagekit.io/peu7i3asaiq/STASH_PHOTOS_/iso-republic-hostas-background-multipleexposure_kpjpaEaFz.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1665461367628',
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const People(),
          ]))
        ],
      ));
}
