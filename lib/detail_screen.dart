import 'package:flutter/material.dart';
import 'package:handle_api/passing_data.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  static const routeName = '/users';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PassingData;
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: appBar(args.name),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        args.name,
                        style: const TextStyle(fontSize: 30),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    printData(Arguments('Username', args.username, 10,
                        Icons.account_circle_outlined)),
                    printData(Arguments(
                        'Phone', args.phone, 10, Icons.phone_android_outlined)),
                    printData(Arguments(
                        'Email ID', args.email, 10, Icons.email_outlined)),
                    printData(
                        Arguments('Website', args.website, 10, Icons.web)),
                    printData(Arguments(
                        'Address', '', 10, Icons.location_city_outlined)),
                    printData(Arguments('Street', args.address.street)),
                    printData(Arguments('City', args.address.city)),
                    printData(Arguments('Zipcode', args.address.zipcode)),
                    printData(Arguments(
                        'Company', '', 10, Icons.work_outline_rounded)),
                    printData(Arguments('Name', args.company.name)),
                    printData(
                        Arguments('Catch Phrase', args.company.catchPhrase)),
                    printData(Arguments('Business', args.company.bs)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar(String name) {
    return AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[800],
              foregroundColor: Colors.white,
              child: Text(name[0]),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(name)
          ],
        ));
  }

  Padding printData(Arguments args) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            args.icon,
            color: Colors.blue,
          ),
          SizedBox(width: args.size),
          Expanded(child: Text('${args.key}: ${args.value}')),
        ],
      ),
    );
  }
}

class Arguments {
  final String key;
  final String value;
  final double? size;
  final IconData? icon;

  Arguments(this.key, this.value, [this.size = 10, this.icon]);
}
