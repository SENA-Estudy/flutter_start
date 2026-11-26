import 'package:device_preview/device_preview.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // ponlo en false para ver la app sin el teléfono
      builder: (context) => const PosApp(),
    ),
  );
}

class PosApp extends StatelessWidget {
  const PosApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS La Buena Mesa',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('La Buena Mesa app')),
      body: const Center(
        child: Text('¡Hola Valery eres la mejor!', style: TextStyle(fontSize: 28)),
      ),
    );
  }
}
