import 'package:flutter/material.dart';
import 'package:teste_modular/app/app_bloc.dart';
import 'package:teste_modular/app/modules/home/home_bloc.dart';
import 'package:teste_modular/app/modules/home/home_module.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final int index;
  const DetailsPage({Key key, this.title = "Details", this.index})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState(index: index);
}

class _DetailsPageState extends State<DetailsPage> {
  HomeBloc _bloc = HomeModule.to.get();
  final int index;

  _DetailsPageState({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.amberAccent,
      body: Text("Nome:${_bloc.names[index]}"),
    );
  }
}
