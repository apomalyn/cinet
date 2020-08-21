// FLUTTER / DART / THIRD-PARTIES
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// ROUTER
import 'package:cinet/ui/router.dart';

// SERVICES
import 'package:cinet/core/services/navigation_service.dart';
import 'package:cinet/core/services/analytics_service.dart';

// OTHER
import 'package:cinet/generated/l10n.dart';
import 'package:cinet/locator.dart';
import 'package:cinet/ui/utils/app_theme.dart';

void main() {
  setupLocator();

  runApp(Cinet());
}

class Cinet extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      localizationsDelegates: const [
        I18n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: I18n.delegate.supportedLocales,
      navigatorKey: locator<NavigationService>().navigatorKey,
      navigatorObservers: [
        locator<AnalyticsService>().getAnalyticsOberser(),
      ],
      home: Scaffold(
        body: Center(child: Text("Hi!")),
      ),
      onGenerateRoute: Router.generateRoute,
    );
  }
}
