import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: AppSaya(),
  ));
}

class AppSaya extends StatefulWidget {
  @override
  _AppSayaState createState() => _AppSayaState();
}

class _AppSayaState extends State<AppSaya>{
  List<String> list_buah = ['apel', 'jeruk', 'pisang', 'strawberry'];
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Buah - buahan (Lusi)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                ),
              ),
            ),
            body: ListView.builder(
                itemBuilder: (context, index){
                  final listbuah = list_buah[index];
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.0),
                            height: 70.0,
                            width: 250.0,
                            color: Colors.purpleAccent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Center(
                                child: Text(listbuah,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 70.0,
                              color: Colors.white,
                              child: Image.asset('gambar/'+listbuah+'.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: list_buah.length)

        )
    );
  }
}