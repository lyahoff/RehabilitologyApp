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
      appBar: AppBar(
        title: Text(
          'Калькулятор реабилитолога',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(children: [
        cardList(
            'Индекс Бартел',
            'шкала оценки уровня повседневной активности пациента для решения вопроса о нуждаемости его в уходе',
            () => Barthel()),
        cardList(
          'Шкала Ватерлоу',
          'используется для оценки риска развития пролежней у пациента',
          () => Waterlow(),
        ),
        cardList(
          'Шкала Мертон и Саттон',
          'служит для оценки уровня бытовой и социальной адаптации',
          () => Merton(),
        ),
        cardList(
            'Шкала падений Морзе',
            'используется для оценки вероятности риска падения, в связи с наличием наследственных или приобретенных факторов риска',
            () => Morse()),
        cardList(
            'Поведенческая шкала боли',
            'шкала, применяемая для оценки уровня боли у неконтактного пациента, основанная на поведенческих реакциях',
            () => Pain()),
        cardList(
            'Шкала Рэнкина',
            'универсальная шкала оценки инвалидности, независимости и исходов реабилитации. Часто используется для оценки степени инвалидизации после инсульта.',
            () => Rankin()),
        cardList(
            'Индекс мобильности Ривермид',
            'методика предназначенная для клинической оценки мобильности пациента',
            () => Rivermead()),
        cardList(
            'Индекс ходьбы Хаузера',
            'используется для оценки локомоторной функции пациента',
            () => Hauser()),
      ]),
    );
  }
}

Widget cardList(String title, String subtitle, Function() foo) {
  return Column(
    children: [
      ListTile(
        tileColor: Colors.grey[100],
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        onTap: () {
          runApp(foo());
        },
      ),
      const SizedBox(
        height: 5,
      )
    ],
  );
}
