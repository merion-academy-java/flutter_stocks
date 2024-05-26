import 'package:flutter/material.dart';
import 'package:flutter_stocks/pages/all_stocks_page.dart';
import 'package:flutter_stocks/pages/company_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MaterialApp.router(
        routerConfig: GoRouter(initialLocation: "/", routes: [
          GoRoute(
              path: "/",
              builder: (context, state) => const AllStocksPage(),
              routes: [
                GoRoute(
                    path: 'company',
                    builder: (context, state) => const CompanyPage())
              ])
        ]),
      ),
    );
  }
}
