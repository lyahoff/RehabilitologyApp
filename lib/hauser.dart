import 'package:flutter/material.dart';

import 'main.dart';

class Hauser extends StatelessWidget {
  const Hauser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Индекс ходьбы Хаузера',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                runApp(const Rehabilitology());
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: RadioHauser(),
    ));
  }
}

class RadioHauser extends StatefulWidget {
  const RadioHauser({Key? key}) : super(key: key);

  @override
  State<RadioHauser> createState() => _RadioHauserState();
}

class _RadioHauserState extends State<RadioHauser> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'В оценке локомоторной функции используют индекс ходьбы Хаузера, включающий ранжирование пациентов по 10 градациям в зависимости от необходимости внешней помощи, использования приспособлений для передвижения и времени прохождения тестового расстояния. Тестовое расстояние состоявляет 8 метров.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            RadioListTile(
              title: Text('Симптомов болезни нет, активен в полном объеме'),
              value: _value,
              groupValue: 0,
              onChanged: (val) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'Ходит нормально, но отмечает утомляемость при спортивных или иных физических нагрузках'),
              value: _value,
              groupValue: 1,
              onChanged: (val) {
                setState(() {
                  _value = 1;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'Нарушения походки или эпизодические нарушения равновесия; расстройства ходьбы замечают родственники или друзья; может пройти 8 метров за 10 секунд или быстрее'),
              value: _value,
              groupValue: 2,
              onChanged: (val) {
                setState(() {
                  _value = 2;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'Ходит без посторонней помощи и вспомогательных средств; может пройти 8 метров за 20 секунд или быстрее'),
              value: _value,
              groupValue: 3,
              onChanged: (val) {
                setState(() {
                  _value = 3;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'При ходьбе требуется поддержка с одной стороны (клюшка или один костыль); проходит 8 метров за 25 секунд или быстрее'),
              value: _value,
              groupValue: 4,
              onChanged: (val) {
                setState(() {
                  _value = 4;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'При ходьбе необходима поддержка с 2х сторон (палки, костыли) и проходит 8 метров за 25 секунд или быстрее; или необходима поддержка с одной стороны, но для прохождения 8 метров требуется более 25 секунд'),
              value: _value,
              groupValue: 5,
              onChanged: (val) {
                setState(() {
                  _value = 5;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'Требуется двусторонняя поддержка и более 20 секунд для прохождения 8 метров; может иногда пользоваться инвалидной коляской'),
              value: _value,
              groupValue: 6,
              onChanged: (val) {
                setState(() {
                  _value = 6;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'Ходьба ограничивается несколькими шагами с двусторонней поддержкой; не может пройти 8 метров; может пользоваться инвалидной коляской для большей мобильности'),
              value: _value,
              groupValue: 7,
              onChanged: (val) {
                setState(() {
                  _value = 7;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'Прикован к инвалидной коляске; может с ее помощью передвигаться самостоятельно'),
              value: _value,
              groupValue: 8,
              onChanged: (val) {
                setState(() {
                  _value = 8;
                });
              },
            ),
            RadioListTile(
              title: Text(
                  'Прикован к инвалидной коляске; не может с ее помощью передвигаться самостоятельно'),
              value: _value,
              groupValue: 9,
              onChanged: (val) {
                setState(() {
                  _value = 9;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Количество баллов по индексу ходьбы Хаузера: $_value',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}
