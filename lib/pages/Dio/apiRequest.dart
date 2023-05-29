import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiRequest extends StatefulWidget {
  const ApiRequest({super.key});

  @override
  State<ApiRequest> createState() => _ApiRequest();
}

class _ApiRequest extends State<ApiRequest> {
  List jsonList = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    final dio = Dio();
    try {
      final response =
          await dio.get('https://dummyjson.com/products?limit=10');
      // print(response);
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data['products'];
        });
      } else {
        print(response.statusCode);
      }
    } catch (e, stacktrace) {
      print(e);
      print(stacktrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Request API'),
        ),
        body: ListView.builder(
          itemCount: jsonList == null ? 0 : jsonList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(jsonList[index]['title']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(jsonList[index]['description']),
                  ],
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    jsonList[index]['thumbnail'],
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
