import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import the provider and layout files from your project structure
import 'providers/app_state_provider.dart';
import 'views/layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SpotDropApp());
}

class SpotDropApp extends StatelessWidget {
  const SpotDropApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppStateProvider()),
      ],
      child: MaterialApp(
        title: 'SpotDrop - Community Lending',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal,
            brightness: Brightness.light,
          ),
          cardTheme: CardThemeData(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        home: const ResponsiveMainLayout(),
      ),
    );
  }
}