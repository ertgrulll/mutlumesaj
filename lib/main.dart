import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/data/data_source/inspiration_data_source.dart';
import 'package:mutlumesaj/screens/inspiration/data/repository/inspiration_repository.dart';
import 'package:mutlumesaj/screens/inspiration/pages/inspirations_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: RepositoryProvider(
        create: (context) => InspirationRepository(
          dataSoruce: InspirationsDataSource(),
        ),
        child: const InspirtaionsPage(),
      ),
    );
  }
}
