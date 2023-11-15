import 'package:flutter_application_2/presentation/screens/screens.dart';
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
]);
