import 'package:flutter/material.dart';
import 'package:rehabilitology/barthel.dart';

import 'main.dart';

class Morse extends StatelessWidget {
  const Morse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Шкала падений Морзе',
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
                runApp(Rehabilitology());
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: MorseLogic(),
    ));
  }
}

class MorseLogic extends StatefulWidget {
  const MorseLogic({Key? key}) : super(key: key);

  @override
  State<MorseLogic> createState() => _MorseLogicState();
}

class _MorseLogicState extends State<MorseLogic> {
  int _val1 = 0;
  int _val2 = 0;
  int _val3 = 0;
  int _val4 = 0;
  int _val5 = 0;
  int _val6 = 0;
  int _total = 0;
  String _result = '';
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        header('Падал ли пациент в последние 3 мес?'),
        RadioListTile(
            title: Text('Да'),
            value: _val1,
            groupValue: 25,
            onChanged: (val) {
              setState(() {
                _val1 = 25;
              });
            }),
        RadioListTile(
            title: Text('Нет'),
            value: _val1,
            groupValue: 0,
            onChanged: (val) {
              setState(() {
                _val1 = 0;
              });
            }),
        header('Есть ли сопутствующее заболевание?'),
        RadioListTile(
            title: Text('Да'),
            value: _val2,
            groupValue: 15,
            onChanged: (val) {
              setState(() {
                _val2 = 15;
              });
            }),
        RadioListTile(
            title: Text('Нет'),
            value: _val2,
            groupValue: 0,
            onChanged: (val) {
              setState(() {
                _val2 = 0;
              });
            }),
        header('Самостоятельность при ходьбе'),
        RadioListTile(
            title: Text(
                'Ходит сам (даже если при помощи кого-то), или строгий постельный режим, неподвижно лежит'),
            value: _val3,
            groupValue: 0,
            onChanged: (val) {
              setState(() {
                _val3 = 0;
              });
            }),
        RadioListTile(
            title: Text('Костыли/ходунки/трость'),
            value: _val3,
            groupValue: 15,
            onChanged: (val) {
              setState(() {
                _val3 = 15;
              });
            }),
        RadioListTile(
            title: Text('Опирается о мебель или стены для поддержки'),
            value: _val3,
            groupValue: 30,
            onChanged: (val) {
              setState(() {
                _val3 = 30;
              });
            }),
        header(
            'Принимает внутривенное вливание/принимает гепарин, фраксипарин'),
        RadioListTile(
            title: Text('Да'),
            value: _val4,
            groupValue: 25,
            onChanged: (val) {
              setState(() {
                _val4 = 25;
              });
            }),
        RadioListTile(
            title: Text('Нет'),
            value: _val4,
            groupValue: 0,
            onChanged: (val) {
              setState(() {
                _val4 = 0;
              });
            }),
        header('Походка'),
        RadioListTile(
            title: Text('Нормальная (ходит свободно)'),
            value: _val5,
            groupValue: 0,
            onChanged: (val) {
              setState(() {
                _val5 = 0;
              });
            }),
        RadioListTile(
            title: Text(
                'Слегка несвободная (ходит с остановками, шаги короткие, иногда с задержкой)'),
            value: _val5,
            groupValue: 10,
            onChanged: (val) {
              setState(() {
                _val5 = 10;
              });
            }),
        RadioListTile(
            title: Text(
                'Нарушения (не может встать, ходит опираясь, смотрит вниз)'),
            value: _val5,
            groupValue: 20,
            onChanged: (val) {
              setState(() {
                _val5 = 20;
              });
            }),
        header('Психическое состояние'),
        RadioListTile(
            title: Text('Знает о своей способности двигаться'),
            value: _val6,
            groupValue: 0,
            onChanged: (val) {
              setState(() {
                _val6 = 0;
              });
            }),
        RadioListTile(
            title: Text('Не знает или забывает, что нужна помощь при движении'),
            value: _val6,
            groupValue: 15,
            onChanged: (val) {
              setState(() {
                _val6 = 15;
              });
            }),
        SizedBox(
          height: 20,
        ),
        resultMorse(_result, _total, _val1, _val2, _val3, _val4, _val5, _val6),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

Widget header(String title) {
  return Text(
    title,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  );
}

Widget resultMorse(
  String _result,
  int _total,
  int _val1,
  int _val2,
  int _val3,
  int _val4,
  int _val5,
  int _val6,
) {
  _total = _val1 + _val2 + _val3 + _val4 + _val5 + _val6;

  if (_total <= 24) {
    _result = 'Нет риска падений';
  }
  if (_total >= 25 && _total <= 50) {
    _result = 'Низкая степень риска падений';
  }
  if (_total >= 51) {
    _result = 'Высокая степень риска падений';
  }

  return Text(_result,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));
}
