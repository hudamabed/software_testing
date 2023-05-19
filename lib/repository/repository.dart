import 'package:dressmeup/repository/database_Connections.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DataBaseConnection _dataBaseConnection;

  Repository() {
    _dataBaseConnection = DataBaseConnection();
  }

  static late Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _dataBaseConnection.setDataBase();
    return _database;
  }

  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

  readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }
}
