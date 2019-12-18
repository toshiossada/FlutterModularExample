import 'package:flutter/material.dart';
import 'package:teste_modular/app/modules/home/home_bloc.dart';
import 'package:teste_modular/app/modules/home/home_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc _bloc = HomeModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _bloc.names.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(_bloc.names[index]),
            onTap: () {
              Navigator.pushNamed(context, '/details/$index');
              //Navigator.pushNamed(context, '/details', arguments: index);
            },
          );
        },
      ),
    );
  }
}
