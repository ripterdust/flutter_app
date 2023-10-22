import 'package:clinic_app/screens/appointments/appointments_screen.dart';
import 'package:clinic_app/screens/screens.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/hospitals',
      name: HospitalListScreen.name,
      builder: (context, state) => const HospitalListScreen(),
    ),
    GoRoute(
      path: '/user',
      name: UserScreen.name,
      builder: (context, state) => const UserScreen(),
    ),
    GoRoute(
      path: '/appointments',
      name: AppointmentsScreen.name,
      builder: (context, state) => const AppointmentsScreen(),
    )
  ],
);
