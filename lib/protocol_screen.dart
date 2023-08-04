import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/protocol_screen_content_list.dart';
import 'package:referance_procedure_guide_book/Navigation_Drawer/navigation_drawer_widgets.dart';

class ProtocolScreen extends StatefulWidget {
  const ProtocolScreen({super.key, required this.title});

  final String title;

  @override
  State<ProtocolScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<ProtocolScreen> {
  void _onItemTapped(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.black,
        child: NavigationDrawerWidgets(),
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: ProtocolScreenContentList(),
      ),
    );
  }
}
