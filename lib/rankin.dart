import 'package:flutter/material.dart';

import 'main.dart';

class Rankin extends StatelessWidget {
  const Rankin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Шкала Рэнкина',
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
      body: RankinLogic(),
    ));
  }
}

int _rankin = 0;

class RankinLogic extends StatefulWidget {
  const RankinLogic({Key? key}) : super(key: key);

  @override
  State<RankinLogic> createState() => _RankinLogicState();
}

class _RankinLogicState extends State<RankinLogic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.grey[300],
      child: Column(
        children: [
          Text(
            'Модифицированная шкала Рэнкина (Modified Rankin Scale - mRS) универсальная шкала оценки инвалидности, независимости и исходов реабилитации. Часто используется для оценки степени инвалидизации после инсульта.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
