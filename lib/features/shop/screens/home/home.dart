import 'package:Layway/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:Layway/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LayawayPrimaryHeaderContainer(
              child: Column(
                children: [
                  LayawayHomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

