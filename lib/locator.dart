// FLUTTER / DART / THIRD-PARTIES
import 'package:get_it/get_it.dart';

// SERVICES
import 'package:cinet/core/services/navigation_service.dart';
import 'package:cinet/core/services/analytics_service.dart';

// MANAGERS

GetIt locator = GetIt.instance;

// Initialize the different services and managers
void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AnalyticsService());
}