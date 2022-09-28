import 'package:dart_packages_introduction/models/person.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

/// 自作ウィジェット
/// 一人分のカード情報を表示するためのウィジェット
class PersonCard extends StatelessWidget {
  final Person person;

  /// 表示対象のPersonを渡してあげる
  const PersonCard({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      back: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('こっちが裏面だよ')],
        ),
      ),
      front: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(person.icon),
            Text(person.name),
            Text(person.selfIntroduction)
          ],
        ),
      ),
    );
  }
}
