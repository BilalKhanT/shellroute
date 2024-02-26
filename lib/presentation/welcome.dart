import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persist_nav/presentation/screen_a.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {GoRouter.of(context).go('/screenA');},
        child: Icon(
          Icons.h_mobiledata
        ),
      ),
    );
  }
}
