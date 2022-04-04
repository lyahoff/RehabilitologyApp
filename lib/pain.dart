import 'package:flutter/material.dart';
import 'package:rehabilitology/barthel.dart';

import 'main.dart';

class Pain extends StatelessWidget {
  const Pain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Поведенческая шкала боли',
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
      body: PainLogic(),
    ));
  }
}

class PainLogic extends StatefulWidget {
  const PainLogic({Key? key}) : super(key: key);

  @override
  State<PainLogic> createState() => _PainLogicState();
}

class _PainLogicState extends State<PainLogic> {
  int _val1 = 0;
  int _val2 = 0;
  int _val3 = 0;
  int _val4 = 0;
  int _val5 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Card(
          elevation: 2,
          child: ListTile(
            title: Text(
              'Поведенческая шкала боли - шкала, применяемая для оценки уровня боли у неконтактного пациента, основанная на поведенческих реакциях.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Лицо',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Мышцы лица расслаблены'),
                  value: _val1,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val1 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Мимические мышцы напряжены, хмурый взгляд'),
                  value: _val1,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val1 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text('Cжатые челюсти, гримаса боли'),
                  value: _val1,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val1 = 2;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Беспокойство',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Пациент расслаблен, движения нормальные'),
                  value: _val2,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Нечастые беспокойные движения, смена положения тела'),
                  value: _val2,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Частые беспокойные движения, включая голову, постоянные смены положения тела'),
                  value: _val2,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 2;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Мышечный тонус',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Нормальный мышечный тонус'),
                  value: _val3,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Повышенный тонус, сгибание пальцев рук и ног'),
                  value: _val3,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text('Мышечная ригидность'),
                  value: _val3,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 2;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Речь',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Никаких посторонних звуков'),
                  value: _val4,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Редкие стоны, крики, хныканье и ворчание'),
                  value: _val4,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Частые или постоянные стоны, крики, хныканье и ворчание'),
                  value: _val4,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 2;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Контактность, управляемость',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Спокоен, охотно сотрудничает'),
                  value: _val5,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Возможно успокоить словом, выполняет предписания персонала'),
                  value: _val5,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Трудно успокоить словом, негативное отношение к персоналу, не выполняет предписания'),
                  value: _val5,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 2;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            SizedBox(
              height: 5,
            ),
            ListTile(
                title: Text(
              'Сумма баллов по шкале боли составляет ${_val1 + _val2 + _val3 + _val4 + _val5}',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 5,
            ),
          ]),
        ),
      ],
    );
  }
}
