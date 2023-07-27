import 'package:flutter/services.dart';

class CapitalizeInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(_, TextEditingValue newValue) {
    final text = newValue.text.trim();
    if (text.isEmpty) {
      return newValue;
    }

    /// la primera letra siempre en mayuscula
    final newtext = '${text[0].toUpperCase()}${text.substring(1, text.length)}';
    return newValue.copyWith(
      /// para que el cursor este al final de las letras
      selection: TextSelection(
        baseOffset: newtext.length, // inicio
        extentOffset: newtext.length, // final
      ),
      text: newtext,
      composing: TextRange(start: 0, end: text.length),
    );
  }
}
