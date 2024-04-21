import 'package:crypto_stats/Core/cubit/crypto_assets_cubit.dart';
import 'package:crypto_stats/Core/cubit/live_prices_cubit.dart';
import 'package:crypto_stats/Core/helpers/initialize_dependency.dart';
import 'package:crypto_stats/Core/services/repository.dart';
import 'package:crypto_stats/crypto_stats/library.dart';
import 'package:crypto_stats/generated/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
        ],
        theme: ThemeData(fontFamily: FontFamily.poppins),
        darkTheme: ThemeData.dark(),
        home: MultiBlocProvider(providers: [
          BlocProvider(
            create: (BuildContext context) =>
                CryptoAssetsCubit(injector.get<IRepository>()),
          ),
          BlocProvider(create: (BuildContext context) => LivePricesCubit())
        ], child: const CryptoStatsPage()));
  }
}
