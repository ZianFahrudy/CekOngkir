import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropdownLocationButton<T> extends StatelessWidget {
  DropdownLocationButton(
      {Key key,
      this.listLocationMenuItem,
      this.hintText,
      this.onChanged,
      this.value})
      : super(key: key);

  List<DropdownMenuItem<T>> listLocationMenuItem;

  String hintText;
  T value;
  ValueChanged<T> onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
        isExpanded: true,
        hint: Text(hintText),
        items: listLocationMenuItem,
        onChanged: onChanged,
        value: value);
  }
}
