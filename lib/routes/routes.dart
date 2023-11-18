
import 'package:flutter_application_2/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: StartScreen.name,
    builder: (context, state) => const StartScreen(),
  ),
  GoRoute(
    path: '/menu_screen',
    name: MenuScreen.name,
    builder: (context, state) => const MenuScreen(),
  ),
  GoRoute(
    path: '/login_screen',
    name: LogInScreen.name,
    builder: (context, state) => const LogInScreen(),
  ),
  GoRoute(
    path: '/register_screen',
    name: RegisterScreen.name,
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    path: '/transition_screen',
    name: TransitionScreen.name,
    builder: (context, state) => TransitionScreen(type: state.extra as int ),
  ),
  GoRoute(
    path: '/main_calendar_screen',
    name: CalendarMainScreen.name,
    builder: (context, state) => const CalendarMainScreen(),
  ),
  GoRoute(
    path: '/game1_screen',
    name: Game1Screen.name,
    builder: (context, state) => const Game1Screen(),
  ),
  GoRoute(
    path: '/event_screen',
    name: EventScreen.name,
    builder: (context, state) => const EventScreen(),
  ),
]);
