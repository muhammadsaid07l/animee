import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mygraphqlapp/country_model.dart';

class SearchCountryPage extends StatefulWidget {
  const SearchCountryPage({super.key});

  @override
  State<SearchCountryPage> createState() => _SearchCountryPageState();
}
class _SearchCountryPageState extends State<SearchCountryPage> {
  final TextEditingController controller = TextEditingController();
  String? country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextField(
              controller: controller,
            ),
          ),
          Query(
              options: QueryOptions(
                document: gql('''
              query Query {
  country(code: "${country}") {
    name
    native
    capital
    emoji
    currency
    languages {
      code
      name
    }
  }
}
              '''),
              ),
              builder: (result, {refetch, fetchMore}) {
                if (result.hasException) {
                  return Expanded(
                    child: Center(child: Text("Nimadir xato ketdi!")),
                  );
                }
                if (result.isLoading) {
                  Expanded(
                    child: Center(child: CupertinoActivityIndicator()),
                  );
                }
                final data =
                    CountryClass.fromJson(result.data?["country"] ?? {});

                return Expanded(
                  child: Center(
                    child: Text("$data"),
                  ),
                );
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          country = controller.text;
        });
      }),
    );
  }
}
