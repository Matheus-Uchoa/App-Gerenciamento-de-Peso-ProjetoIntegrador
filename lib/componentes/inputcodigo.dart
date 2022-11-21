import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class InputCodigo extends StatelessWidget {
  const InputCodigo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeFields(
        length: 4,
        fieldBorderStyle: FieldBorderStyle.square,
        responsive: false,
        fieldHeight: 40,
        fieldWidth: 40,
        borderWidth: 1,
        activeBorderColor: Colors.deepOrange.shade400,
        activeBackgroundColor: Colors.orange.shade400,
        borderRadius: BorderRadius.circular(10),
        keyboardType: TextInputType.number,
        autoHideKeyboard: false,
        onComplete: (result) {
          print(result);
        });
  }
}
