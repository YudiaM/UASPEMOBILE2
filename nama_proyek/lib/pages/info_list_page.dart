// info_list_page.dart
import 'package:flutter/material.dart';

class InfoListPage extends StatefulWidget {
  @override
  _InfoListPageState createState() => _InfoListPageState();
}

class _InfoListPageState extends State<InfoListPage> {
  List<String> _infoList = [
    'Informasi 1',
    'Informasi 2',
    'Informasi 3',
    // Tambahkan informasi lainnya sesuai kebutuhan
  ];

  String _searchKeyword = '';

  @override
  Widget build(BuildContext context) {
    List<String> filteredList = _infoList
        .where((info) =>
            info.toLowerCase().contains(_searchKeyword.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('List dan Searching Informasi'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Cari Informasi',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  _searchKeyword = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
