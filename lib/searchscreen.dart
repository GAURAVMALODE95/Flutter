import 'package:flutter/material.dart';
import 'package:flutter_application_2/undersearch.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SearchBar(),
              SizedBox(
                  height: 20), // Add some space between SearchBar and Container
              UnderSearch(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'pay contacts or pay freinds',
        prefixIcon: IconButton(
          icon: Icon(Icons.search,color: Colors.white,),
          onPressed: () {
            _searchController.clear();
          },
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
