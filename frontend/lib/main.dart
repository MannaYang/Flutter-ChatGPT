import 'package:frontend/gen/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/app.dart';
import 'package:flutter/material.dart';
import 'package:frontend/utils/sp_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  SpProvider().initPrefs();
  runApp(ProviderScope(child: TranslationProvider(child: const Application())));
}
