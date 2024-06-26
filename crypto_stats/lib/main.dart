import 'package:crypto_stats/app/app.dart';
import 'package:crypto_stats/Core/helpers/initialize_dependency.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependency();
  runApp(const App());
}
