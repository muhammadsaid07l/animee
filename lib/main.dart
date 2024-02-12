import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mygraphqlapp/anime/anime.dart';
import 'package:mygraphqlapp/graphql_config.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final service = GraphQlService();
  runApp(MyApp(
    client: ValueNotifier(service.client()),
  ));
}
class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient>? client;
  const MyApp({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimeListPage(),
      ),
    );
  }
}
