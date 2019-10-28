import 'package:flutter/material.dart';
import 'package:example_flutter/app/app_module.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(AppModule());
}
