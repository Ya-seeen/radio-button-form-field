library radio_button_form_field;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RadioButtonFormField extends StatefulWidget {

  final EdgeInsets? padding;
  final List<String> options;
  final FormFieldValidator<String>? validator;

  const RadioButtonFormField({
    Key? key,
    this.padding = EdgeInsets.zero,
    required this.options,
    this.validator,
  }) : super(key: key);


  @override
  _RadioButtonFormFieldState createState() => _RadioButtonFormFieldState();
}

class _RadioButtonFormFieldState extends State<RadioButtonFormField> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FormField(
        builder: (FormFieldState<bool> state) {
          return Padding(
            padding: widget.padding!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.options.map((x) => RadioListTile(
                value: x,
                groupValue: x,
                onChanged: (value) {
                  setState(() {
                  });
                  state.setValue(true);
                },
                title: Text(x),
              ))
                  .toList(),
            ),
          );
        },
      validator: widget.validator!,
    );
  }

}
