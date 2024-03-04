import 'package:provider_test/packages.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (_) => Todo(),
    child: MaterialApp.router(
      routerConfig: router,
    ),
  ));
}
