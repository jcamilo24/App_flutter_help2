import 'package:application4/models/country.dart';
import 'package:application4/utils/capitalize_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:application4/constants/countries.dart';
import 'package:flutter/services.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final TextEditingController _textEditingController = TextEditingController();
  late final List<country> _countries;
  @override
  void initState() {
    super.initState();
    _countries = countries
        .map<country>(
          (e) => country.fromJson(e),
        )
        .toList();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = _textEditingController.text;
    late final List<country> filteredList;
    if (query.isEmpty) {
      filteredList = _countries;
    } else {
      filteredList = _countries
          .where((e) => e.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: TextField(
          controller: _textEditingController,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp(r'^[a-zA-Z\s]*$'),
            ),
            CapitalizeInputFormatter(),
          ],
          onChanged: (text) {
            setState(() {});
          },
          decoration: InputDecoration(
            label: const Text('search ...'),
            hintText: 'Example: Ecuador',
            hintStyle: const TextStyle(
              color: Colors.black26,
            ),
            prefixIcon: const Icon(
              Icons.search_rounded,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                _textEditingController.text = '';
                FocusScope.of(context).unfocus();
              },
              icon: Icon(Icons.clear),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) {
          final country = filteredList[index];
          return ListTile(
            title: Text(country.name),
          );
        },
        itemCount: filteredList.length,
      ),
    );
  }
}
