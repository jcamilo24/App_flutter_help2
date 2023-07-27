import 'package:flutter/material.dart';

class KeyBoardTypesPage extends StatelessWidget {
  const KeyBoardTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text('Email'),
            ),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text('Phone'),
            ),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            keyboardType:
                TextInputType.numberWithOptions(decimal: true, signed: true),
            decoration: InputDecoration(
              label: Text('Price'),
            ),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              label: Text('Name'),
            ),
            textInputAction: TextInputAction.done,
            onSubmitted: (_) {
              print('holiii');
            },
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('send'),
          ),
        ],
      ),
    );
  }
}
