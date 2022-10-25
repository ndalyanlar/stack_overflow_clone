import 'package:flutter/material.dart';
import 'package:stack_overflow_clone/products/models/navbar_model.dart';

class NavbarViewModel extends ChangeNotifier {
  int currentIndex = 0;

  final List<NavbarModel> _items = [
    NavbarModel(
      icon: Icons.home,
      label: "Home",
    ),
    NavbarModel(
      icon: Icons.person,
      label: "Profile",
    ),
  ];

  List<NavbarModel> get items => _items;

  final List<Widget> _views = [
    Scaffold(),
    Scaffold(),
  ];

  List<Widget> get views => _views;

  void onItemTapped(int index) {
    currentIndex = index;
    notifyListeners();
  }
}