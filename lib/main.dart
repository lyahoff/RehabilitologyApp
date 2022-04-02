import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rehabilitology/barthel.dart';
import 'package:rehabilitology/hauser.dart';
import 'package:rehabilitology/merton.dart';
import 'package:rehabilitology/morse.dart';
import 'package:rehabilitology/pain.dart';
import 'package:rehabilitology/rankin.dart';
import 'package:rehabilitology/rivermead.dart';
import 'package:rehabilitology/waterlow.dart';

void main(List<String> args) {
  runApp(const Rehabilitology());
}

class Rehabilitology extends StatelessWidget {
  const Rehabilitology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Калькулятор реабилитолога',
      home: RehabilitologyBody(),
    );
  }
}

class RehabilitologyBody extends StatelessWidget {
  const RehabilitologyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Калькулятор реабилитолога',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(padding: EdgeInsets.all(10), children: [
        CustomCard(
            'Индекс Бартел',
            'Шкала оценки уровня повседневной активности пациента для решения вопроса о нуждаемости его в уходе',
            'images/barthel.png',
            () => Barthel()),
        CustomCard(
            'Шкала Ватерлоу',
            'Используется для оценки риска развития пролежней у пациента',
            'images/waterlow.png',
            () => Waterlow()),
        CustomCard(
            'Шкала Мертон и Саттон',
            'Служит для оценки уровня бытовой и социальной адаптации',
            'images/merton.png',
            () => Merton()),
        CustomCard(
            'Шкала падений Морзе',
            'Используется для оценки вероятности риска падения, в связи с наличием наследственных или приобретенных факторов риска',
            'images/morse.png',
            () => Morse()),
        CustomCard(
            'Поведенческая шкала боли',
            'Шкала, применяемая для оценки уровня боли у неконтактного пациента, основанная на поведенческих реакциях',
            'images/pain.png',
            () => Pain()),
        CustomCard(
            'Шкала Рэнкина',
            'Универсальная шкала оценки инвалидности, независимости и исходов реабилитации. Часто используется для оценки степени инвалидизации после инсульта',
            'images/renkin.png',
            () => Rankin()),
        CustomCard(
            'Индекс мобильности Ривермид',
            'Методика предназначенная для клинической оценки мобильности пациента',
            'images/rivermead.png',
            () => Rivermead()),
        CustomCard(
            'Индекс ходьбы Хаузера',
            'Используется для оценки локомоторной функции пациента',
            'images/hauser.png',
            () => Hauser()),
      ]),
    );
  }
}

Widget CustomCard(String title, String subtitle, String imagePath, foo()) {
  return Card(
      shadowColor: Colors.black,
      color: Colors.white,
      elevation: 2,
      child: InkWell(
        onTap: (() => {runApp(foo())}),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(imagePath),
              title: Text('$title\n'),
              subtitle: Text('$subtitle'),
            ),
          ],
        ),
      ));
}
