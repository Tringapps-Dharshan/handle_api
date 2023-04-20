import 'package:flutter/material.dart';
import 'package:handle_api/passingData.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  static const routeName = '/extractArguments';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PassingData;
    double c_width = MediaQuery.of(context).size.width * 0.8;
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
          titleSpacing: 0,
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[800],
                foregroundColor: Colors.white,
                child: Text(args.name[0]),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(args.name)
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.name,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.account_circle),
                          const SizedBox(width: 10),
                          Text('Username: ${args.username}')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.phone_android_rounded),
                          const SizedBox(width: 10),
                          Text('Phone: ${args.phone}')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.email_rounded),
                          const SizedBox(width: 10),
                          Text('Email ID: ${args.email}')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.web_rounded),
                          const SizedBox(width: 10),
                          Text('Website: ${args.website}')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: const [
                        Icon(Icons.location_city),
                        SizedBox(width: 10),
                        Text('Address:')
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          Text('Street: ${args.address.street},')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          Text('City: ${args.address.city}')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          Text('Zip Code: ${args.address.zipcode}')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.work),
                          SizedBox(width: 10.0),
                          Text('Company:')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          Text('Company Name: ${args.company.name}')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          Expanded(
                              child: Text(
                                  'Company Name: ${args.company.catchPhrase}'))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          Expanded(child: Text('Business: ${args.company.bs}'))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
