import 'package:congkir/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'presentation/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
