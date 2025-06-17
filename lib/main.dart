import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hitplay/core/configs/theme/app_theme.dart';
import 'package:hitplay/firebase_options.dart';
import 'package:hitplay/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:hitplay/presentation/splash/pages/splash.dart';
import 'package:hitplay/service_locator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(directory.path),
  );

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );

  await initializeDependencies();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit())
      ],

      child: BlocBuilder<ThemeCubit,ThemeMode>(
        builder: (context,mode) => MaterialApp(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: mode,  // 👈 Use the mode from ThemeCubit to set theme
            debugShowCheckedModeBanner: false,

            home: const SplashPage()
        )
      )
    );
  }
}
