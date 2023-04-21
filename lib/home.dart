import 'package:flutter/material.dart';
import 'package:handle_api/detail_screen.dart';
import 'package:handle_api/passing_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    setState(() {
      data = jsonDecode(res.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch data from API'),
      ),
      body: data != null
          ? ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.grey,
                  height: 0,
                );
              },
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.grey[100],
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    foregroundColor: Colors.white,
                    child: Text(data[index]['name'][0]),
                  ),
                  title: Text(data[index]['name']),
                  subtitle: Text(data[index]['email']),
                  contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailScreen.routeName,
                      arguments: PassingData(
                        data[index]['id'],
                        data[index]['name'],
                        data[index]['username'],
                        data[index]['email'],
                        data[index]['phone'],
                        data[index]['website'],
                        Address(
                            data[index]['address']['street'],
                            data[index]['address']['suite'],
                            data[index]['address']['city'],
                            data[index]['address']['zipcode']),
                        Company(
                          data[index]['company']['name'],
                          data[index]['company']['catchPhrase'],
                          data[index]['company']['bs'],
                        ),
                      ),
                    );
                  },
                );
              },
              itemCount: data.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
