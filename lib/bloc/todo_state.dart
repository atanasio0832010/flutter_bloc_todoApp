import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';

@immutable
abstract class TodoState extends Equatable {}

class Equatable {}

class Empty extends TodoState {
  List<Object> get props => [];
}

class Loading extends TodoState {
  List<Object> get props => [];
}

class Error extends TodoState {
  final String message;
  Error({
    required this.message,
  });
  List<Object> get props => [this.message];
}

class Loaded extends TodoState {
  final List<Todo> todos;
  Loaded({
    required this.todos,
  });
  List<Object> get props => [this.todos];
}
