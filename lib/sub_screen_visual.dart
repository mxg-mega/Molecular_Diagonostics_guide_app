import 'package:flutter/material.dart';

/// This is a template for sub routes that has a parent screen.
/// the content variable allows for customization.
/// it has an app bar with the back arrow icon which if pressed the user id navigated to previous page.

class SubScreenTemplate extends StatelessWidget {
  const SubScreenTemplate({
    super.key,
    required this.screenTitle,
    required this.content,
  });

  final Widget content;
  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenTitle,),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: content,
    );
  }
}
