import 'package:flutter_clean_architecture/features/todo/data/database/todo_remote_database.dart';
import 'package:flutter_clean_architecture/features/todo/domain/entities/todo.dart';
import 'package:flutter_clean_architecture/features/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDatabase remoteDatabase;
  TodoRepositoryImpl({
    required this.remoteDatabase,
  });

  @override
  Future<Todo> add(Todo todo) async {
    final results = await remoteDatabase.addTodo(todo);
    return results;
  }

  @override
  Future<Todo> delete(Todo todo) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Todo> edit(Todo todo) async {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getAll() async {
    // TODO: implement getAll
    throw UnimplementedError();
  }

}