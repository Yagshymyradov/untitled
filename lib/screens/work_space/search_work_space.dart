import 'package:flutter/cupertino.dart';
import 'package:untitled1/components/search.dart';

class SearchWorkSpace extends SearchDelegateCustom<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return Container();
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  @override
  Widget? searchFieldSuffixIcon(BuildContext context) {
    return Container();
  }
}
