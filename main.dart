import 'package:flutter/material.dart';

import 'screens/booking_history_screen.dart';
import 'screens/booking_summary_screen.dart';
import 'screens/category_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/emergency_screen.dart';
import 'screens/home_services_screen.dart';
import 'screens/main_nav.dart';
import 'screens/map_tracking_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/saved_vehicles_screen.dart';
import 'screens/settings_screen.dart';
// Screens
import 'screens/splash_screen.dart';
import 'screens/vehicle_select_screen.dart';
import 'screens/workshop_services_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MechNowApp());
}

class MechNowApp extends StatefulWidget {
  const MechNowApp({super.key});

  @override
  State<MechNowApp> createState() => _MechNowAppState();
}

class _MechNowAppState extends State<MechNowApp> {
  bool darkMode = false;

  void toggleTheme(bool value) => setState(() => darkMode = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MechNow',
      theme: darkMode ? AppTheme.dark() : AppTheme.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        MainNav.routeName: (_) => MainNav(onToggleTheme: toggleTheme),
        VehicleSelectScreen.routeName: (_) => const VehicleSelectScreen(),
        CategoryScreen.routeName: (_) => const CategoryScreen(),
        EmergencyScreen.routeName: (_) => const EmergencyScreen(),
        HomeServicesScreen.routeName: (_) => const HomeServicesScreen(),
        WorkshopServicesScreen.routeName: (_) => const WorkshopServicesScreen(),
        BookingSummaryScreen.routeName: (_) => const BookingSummaryScreen(),
        BookingHistoryScreen.routeName: (_) => const BookingHistoryScreen(),
        ProfileScreen.routeName: (_) => const ProfileScreen(),
        SavedVehiclesScreen.routeName: (_) => const SavedVehiclesScreen(),
        SettingsScreen.routeName:
            (_) => SettingsScreen(onToggleTheme: toggleTheme, isDark: darkMode),
        MapTrackingScreen.routeName: (_) => const MapTrackingScreen(),
        ChatScreen.routeName: (_) => const ChatScreen(),
      },
    );
  }
}
