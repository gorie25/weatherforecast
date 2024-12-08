import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:weathermobileapp/Routers/routername.dart';
import 'package:weathermobileapp/Screen/ForecastScreen/forecast.dart';
import 'package:weathermobileapp/Screen/HomeScreen/homescreen.dart';

class RouterConfigCustom {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: RoutersName.homeName,
        path: RoutersPath.homePath,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            name: RoutersName.forecastName,
            path: RoutersPath.forecastPath,
            builder: (BuildContext context, GoRouterState state) {
              return const ForecastScreen();
            },
        
          ),
        ],
      ),
    ],
  );
}