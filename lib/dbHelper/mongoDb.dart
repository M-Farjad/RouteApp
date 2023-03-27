import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';

import './db_constants.dart';

class MongoDatabase {
  static var db, tracksCollection;

  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    tracksCollection = db.collection(TRACKS_COLLECTION);
  }
}
