import 'package:flutter/material.dart';
import './controllers/plan_controller.dart';

class PlanProvider extends InheritedWidget {
  final _controller = PlanController();

  PlanProvider({super.key, required super.child});

  @override
  bool updateShouldNotify(PlanProvider oldWidget) {
    return false;
  }

  static PlanController of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider!._controller;
  }
}
