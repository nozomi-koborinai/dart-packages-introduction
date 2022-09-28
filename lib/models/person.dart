import 'package:flutter/material.dart';

/// 一人の人間を表示するために必要な項目を持ったクラス
class Person {
  IconData icon;
  String name;
  String selfIntroduction;

  /// コンストラクタ
  Person(
      {required this.icon, required this.name, required this.selfIntroduction});
}
