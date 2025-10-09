import 'package:flutter/material.dart';

class  CounterProvider with ChangeNotifier{
  int _count =0;
  
  int get count => _count; //getter to access count

  void increment(){
    _count++;
    notifyListeners();//tells UI to update
  }

  void decrement(){
    _count--;
    notifyListeners();//tells UI to update
  }
}