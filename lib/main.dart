import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nproject/app.dart';
import 'bloc_observer.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  // ignore: deprecated_member_use
  BlocOverrides.runZoned(
    () {
      runApp(const QuoteApp());
    },
    blocObserver: AppBlocObserver(),
  );
}
