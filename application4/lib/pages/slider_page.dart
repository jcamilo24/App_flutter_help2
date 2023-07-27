import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 10;
  double _value2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 4,
                ),
                child: Slider(
                  onChangeStart: (_) {
                    print('startttt');
                  },
                  onChangeEnd: (_) {
                    print('endddddd');
                  },
                  value: _value2,
                  label: _value2.toString(),
                  thumbColor: Colors.amber,
                  min: 0,
                  max: 10,
                  divisions: 10,
                  onChanged: (value) {
                    setState(
                      () {
                        _value2 = value.floorToDouble();
                      },
                    );
                  },
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 300,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Slider(
                          value: _value,
                          label: _value.toString(),
                          min: 10,
                          max: 100,
                          divisions: 90,
                          onChanged: (value) {
                            setState(() {
                              _value = value.floorToDouble();
                            });
                          }),
                    ),
                  ),
                  Text('lalalal'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
