// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;
  Note(this._title, this._date, this._priority,
      [this._description] // Optional parameter
      );
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description] // Optional parameter
      );

  //getter
  int get id => _id;
  String get title => _title;
  String get description => _description;
  int get priority => _priority;
  String get date => _date;

  //setter
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  // convert note object into map object because sqflite works with map object only.

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map["id"] = _id;
    }
    map["title"] = _title;
    map["description"] = _description;
    map["priority"] = _priority;
    map["date"] = _date;
    return map;
  }

  // Extract note object from map object

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map["id"];
    this._title = map["title"];
    this._description = map["description"];
    this._priority = map["priority"];
    this._date = map["date"];
  }
}
