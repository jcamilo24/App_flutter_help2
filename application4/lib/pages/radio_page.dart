import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? _better;
  String? _gender;

  void _onBetterChanged(String? value) {
    setState(() {
      _better = value;
    });
  }

  void _onGenderChanged(String? value) {
    setState(() {
      _gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            Text('which is better?'),
            RadioListTile<String>(
              value: 'flutter',
              groupValue: _better,
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              title: Text('Flutter'),
              onChanged: _onBetterChanged,
              activeColor: Colors.redAccent,
              dense: true,
            ),
            RadioListTile<String>(
              value: 'react native',
              groupValue: _better,
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              dense: true,
              title: Text('React Native'),
              onChanged: _onBetterChanged,
            ),
            Divider(),
            Text('whats your gender?'),
            RadioListTile<String>(
              value: 'Male',
              groupValue: _gender,
              title: Text('Male'),
              onChanged: _onGenderChanged,
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              dense: true,
            ),
            RadioListTile<String>(
              value: 'Female',
              groupValue: _gender,
              title: Text('Female'),
              onChanged: _onGenderChanged,
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
