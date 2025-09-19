import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mishkat/core/config/cache/cache_helper.dart';
import 'package:mishkat/core/config/theme/cubit/theme_cubit.dart';
import 'package:mishkat/core/config/theme/theme_data/them_data_dark.dart';
import 'package:mishkat/core/config/theme/theme_data/theme_data_light.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory((await getApplicationDocumentsDirectory()).path),
  );
  CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Mishkat',
            theme: getLightTheme(),
            darkTheme: getDarkTheme(),
            themeMode: themeMode,
          );
        },
      ),
    );
  }
}
