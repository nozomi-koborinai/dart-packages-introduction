import 'package:card_swiper/card_swiper.dart';
import 'package:dart_packages_introduction/components/person_card.dart';
import 'package:dart_packages_introduction/models/person.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/// リスト表示に使用するための人たち
final persons = <Person>[
  Person(icon: Icons.man, name: 'kobo', selfIntroduction: 'SPAJAM楽しすぎました'),
  Person(icon: Icons.woman, name: 'cobo', selfIntroduction: '山梨合宿楽しすぎました'),
  Person(
      icon: Icons.manage_accounts,
      name: 'kobocobokoto',
      selfIntroduction: '何もでない'),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Swiper(
              autoplay: true,
              pagination: SwiperPagination(),
              control: SwiperControl(),
              itemCount: persons.length,
              itemBuilder: (BuildContext context, int index) {
                final person = persons[index];

                return PersonCard(person: person);
              }),
        ));
  }
}
