import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late DateTime _initialDate, _date;
  @override
  void initState() {
    super.initState();
    _initialDate = DateTime(1993, 4, 10);
    _date = _initialDate;

    while (!_selectableDayPredicate(_initialDate)) {
      _initialDate = _initialDate.add(
        Duration(days: 1),
      );
      _date = _initialDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _selectTime,
            icon: Icon(Icons.watch),
          ),
          IconButton(
            onPressed: _selectDate,
            icon: Icon(Icons.calendar_month),
          ),
          IconButton(
            onPressed: _save,
            icon: Icon(Icons.save),
          )
        ],
      ),
      body: SafeArea(
        child: CalendarDatePicker(
          initialDate: _date,
          firstDate: DateTime(1900, 5),
          lastDate: DateTime.now(),
          //initialCalendarMode: DatePickerMode.year,
          onDateChanged: (date) {
            _date = date;
          },
          selectableDayPredicate: _selectableDayPredicate,
        ),
      ),
    );
  }

  bool _selectableDayPredicate(DateTime date) {
    return date.weekday != 6 && date.weekday != 7;
  }

  void _save() {
    if (_initialDate != _date) {
      print(_date);
    }
    Navigator.pop(context);
  }

  void _selectDate() async {
    final date = await showDatePicker(
      initialEntryMode: DatePickerEntryMode.input,
      context: context,
      builder: (_, child) {
        return WillPopScope(
          child: child!,
          onWillPop: () async => false,
        );
      },
      initialDate: _date,
      firstDate: DateTime(1900, 5),
      lastDate: DateTime.now(),
    );
    if (date != null) {
      setState(() {
        _date = date;
      });
    }
  }

  void _selectTime() async {
    final timeofDay = await showTimePicker(
      initialEntryMode: TimePickerEntryMode.input,
      context: context,
      builder: (_, child) {
        return WillPopScope(
          child: child!,
          onWillPop: () async => false,
        );
      },
      minuteLabelText: 'Minutos',
      hourLabelText: 'Hora',
      cancelText: 'Cancelar',
      confirmText: 'Aceptar',
      initialTime: TimeOfDay.now(),
    );
    if (timeofDay != null) {}
  }
}
