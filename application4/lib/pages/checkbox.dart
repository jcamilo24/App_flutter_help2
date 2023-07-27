import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _checked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text('''
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s with the release of 
Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing 
software like Aldus PageMaker including versions of Lorem Ipsum.
          '''),
                CheckboxListTile(
                  value: _checked,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _checked = value;
                      });
                    }
                  },
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                ),
                Checkbox(
                  value: _checked,
                  fillColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _checked = value;
                      });
                    }
                  },
                ),
                Divider(),
                SwitchListTile(
                  value: _checked,
                  inactiveTrackColor: Colors.grey.shade300,
                  title: Text('Enable Push Notifications'),
                  onChanged: (value) {
                    setState(() {
                      _checked = value;
                    });
                  },
                ),
                Divider(),
                MaterialButton(
                  onPressed: _checked ? () {} : null,
                  child: Text('Next'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
