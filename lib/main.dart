import 'package:flutter/material.dart';
import 'package:imoney/screens/movimento.dart';
import 'package:imoney/screens/pagamento.dart';
import 'package:imoney/screens/relMovimentos.dart';
import 'package:imoney/screens/usuario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("iMoney"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Nicolas"),
              accountEmail: Text("Saldo Atual: 0.0", style: TextStyle(fontWeight: FontWeight.bold),),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.blue: Colors.white,
                child: Icon(Icons.person)
              ),
            ),
            ListTile(
              title: Text('Usuário'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Usuario()),
                );

              },
            ),
            ListTile(
              title: Text('Movimento'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Movimento()),
                );

              },
            ),
            ListTile(
              title: Text('Pagamento'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Pagamento()),
                );

              },
            ),
            ListTile(
              title: Text('Gerar relatório dos Movimentos'),
              onTap: () {
               // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          RelMovimentos()),
                );

              },
            ),
          ],
        ),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
    );
  }
}
