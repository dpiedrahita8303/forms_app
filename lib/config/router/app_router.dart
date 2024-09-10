

import 'package:forms_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes:  [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/cubits',
      builder: (context, state) {
        return const CubitCounterScreen();
      },
    ),
    GoRoute(
      path: '/bloc',
      builder: (context, state) {
        return const BlocCounterScreen();
      },
    ),
    GoRoute(
      path: '/new-user',
      builder: (context, state) {
        return const RegisterScreen();
      },
    ),
    GoRoute(
      path: '/traditional-register',
      builder: (context, state) {
        return const TraditionalRegisterScreen();
      },
    ),
    GoRoute(
      path: '/stream',
      builder: (context, state) {
        return const StreamScreen();
      },
    ),
  ],
);