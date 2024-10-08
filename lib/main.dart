import 'package:flutter/material.dart';
import 'package:flutter_tik_tok/config/app_theme.dart';
import 'package:flutter_tik_tok/presentation/discover/screens/discover/discover_screen.dart';
import 'package:flutter_tik_tok/presentation/providers/discover_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) => DiscoverProvider()
              ..loadNextPage()), // DiscoverProvider() y DiscoverProviderloadNextPage()
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const Scaffold(
          body: Center(
            child: DiscoverScreen(),
          ),
        ),
      ),
    );
  }
}
