import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _numberOfBathrooms =
        prefs.getString('ff_numberOfBathrooms') ?? _numberOfBathrooms;
    _numberOfHouseholdPeople = prefs.getString('ff_numberOfHouseholdPeople') ??
        _numberOfHouseholdPeople;
    _numberOfPets = prefs.getString('ff_numberOfPets') ?? _numberOfPets;
    _numberOfRooms = prefs.getString('ff_numberOfRooms') ?? _numberOfRooms;
    _packageStartDate = prefs.containsKey('ff_packageStartDate')
        ? DateTime.fromMillisecondsSinceEpoch(
            prefs.getInt('ff_packageStartDate')!)
        : _packageStartDate;
    _timeSlot = prefs.getString('ff_timeSlot') ?? _timeSlot;
    _packageName = prefs.getString('ff_packageName') ?? _packageName;
    _salePrice = prefs.getDouble('ff_salePrice') ?? _salePrice;
    _neededHours = prefs.getDouble('ff_neededHours') ?? _neededHours;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _numberOfBathrooms = '';
  String get numberOfBathrooms => _numberOfBathrooms;
  set numberOfBathrooms(String _value) {
    _numberOfBathrooms = _value;
    prefs.setString('ff_numberOfBathrooms', _value);
  }

  String _numberOfHouseholdPeople = '';
  String get numberOfHouseholdPeople => _numberOfHouseholdPeople;
  set numberOfHouseholdPeople(String _value) {
    _numberOfHouseholdPeople = _value;
    prefs.setString('ff_numberOfHouseholdPeople', _value);
  }

  String _numberOfPets = '';
  String get numberOfPets => _numberOfPets;
  set numberOfPets(String _value) {
    _numberOfPets = _value;
    prefs.setString('ff_numberOfPets', _value);
  }

  String _numberOfRooms = '';
  String get numberOfRooms => _numberOfRooms;
  set numberOfRooms(String _value) {
    _numberOfRooms = _value;
    prefs.setString('ff_numberOfRooms', _value);
  }

  DateTime? _packageStartDate =
      DateTime.fromMillisecondsSinceEpoch(1678730460000);
  DateTime? get packageStartDate => _packageStartDate;
  set packageStartDate(DateTime? _value) {
    _packageStartDate = _value;
    _value != null
        ? prefs.setInt('ff_packageStartDate', _value.millisecondsSinceEpoch)
        : prefs.remove('ff_packageStartDate');
  }

  String _timeSlot = '';
  String get timeSlot => _timeSlot;
  set timeSlot(String _value) {
    _timeSlot = _value;
    prefs.setString('ff_timeSlot', _value);
  }

  String _packageName = '';
  String get packageName => _packageName;
  set packageName(String _value) {
    _packageName = _value;
    prefs.setString('ff_packageName', _value);
  }

  double _salePrice = 0.0;
  double get salePrice => _salePrice;
  set salePrice(double _value) {
    _salePrice = _value;
    prefs.setDouble('ff_salePrice', _value);
  }

  double _neededHours = 0.0;
  double get neededHours => _neededHours;
  set neededHours(double _value) {
    _neededHours = _value;
    prefs.setDouble('ff_neededHours', _value);
  }

  String _checklistPageMenuSelected = 'kitchen';
  String get checklistPageMenuSelected => _checklistPageMenuSelected;
  set checklistPageMenuSelected(String _value) {
    _checklistPageMenuSelected = _value;
  }

  dynamic _initialTasks = jsonDecode(
      '{\"taskId1\":{\"taskName\":\"Clean dishes\",\"isChecked\":false},\"taskId2\":{\"taskName\":\"Sweep floor\",\"isChecked\":false}}');
  dynamic get initialTasks => _initialTasks;
  set initialTasks(dynamic _value) {
    _initialTasks = _value;
  }

  String _lastVisitedPage = '';
  String get lastVisitedPage => _lastVisitedPage;
  set lastVisitedPage(String _value) {
    _lastVisitedPage = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
