import 'package:todoapp/bloc/todo_state.dart';
import '../models/todo.dart';

abstract class TodoEvent extends Equatable {}

class ListTodosEvent extends TodoEvent {
  List<Object> get props => [];
}

class CreateTodoEvent extends TodoEvent {
  final String title;

  CreateTodoEvent({
    required this.title,
  });

  List<Object> get props => [this.title];
}

class DeleteTodoEvent extends TodoEvent {
  final Todo todo;

  DeleteTodoEvent({
    required this.todo,
  });

  List<Object> get props => [this.todo];
}
