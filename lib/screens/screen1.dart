import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_video/routes/route_names.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("SCREEN 1"),
          FloatingActionButton(onPressed: () {

            // context.goNamed(RouteNames.screen3,pathParameters: {"name":"Vaibhav"});
          }),
        ],
      ),
    );
  }
}
