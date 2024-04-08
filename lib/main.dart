import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

 String? stringresponse;
 Map? mapresponse;
 Map? dataresponse;
List? listresponse;
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    apicall();
    super.initState();
  }

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      setState(() {
        stringresponse = response.body;
        mapresponse = json.decode(response.body);
        // dataresponse = mapresponse?['data'];
        listresponse = mapresponse?['data'] ?? 'List reaponse is waiting';
        print(stringresponse);
        print('=-=-=-=-=-==-=-==-=-=-===-=-=-=-=-=-=-=-=');
        print(mapresponse?['data'] ?? 'loading'); 
        print(dataresponse?['email'] ?? 'loading'); 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listresponse?.length ?? 4,
        itemBuilder: (context, index) {
        
        return ListTile(
          leading: Text('${listresponse?[index]['id'] ?? 'Id is Loading'}'),
          title: Text(listresponse?[index]['email'] ?? 'Data Is Loading'),
          subtitle: Row(
            children: [
              Text(listresponse?[index]['first_name'] ?? 'Data Is Loading'),
              Text(listresponse?[index]['last_name'] ?? 'Data Is Loading'),
            ],
          ),
          trailing: CircleAvatar(child: Image.network(listresponse?[index]['avatar'] ?? 'Data Is Loading'),),
        );
      },)
    );
  }
}
