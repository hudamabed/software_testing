// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DataBaseConnection {
  setDataBase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_wishlist_sqflite');
    var database =
        await openDatabase(path, version: 2, onCreate: _onCreatingDatabase);
    return database;
  }

  _onCreatingDatabase(Database database, int version) async {
    await database.execute(
        "CREATE TABLE WishList(id INTEGER PRIMARY KEY,image TEXT, name TEXT, description Text, price TEXT, size TEXT, color TEXT)");
  }
}
