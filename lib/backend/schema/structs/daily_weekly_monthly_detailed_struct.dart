// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyWeeklyMonthlyDetailedStruct extends FFFirebaseStruct {
  DailyWeeklyMonthlyDetailedStruct({
    List<String>? dailies,
    List<String>? weeklies,
    List<String>? monthlies,
    List<String>? detailed,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dailies = dailies,
        _weeklies = weeklies,
        _monthlies = monthlies,
        _detailed = detailed,
        super(firestoreUtilData);

  // "dailies" field.
  List<String>? _dailies;
  List<String> get dailies => _dailies ?? const [];
  set dailies(List<String>? val) => _dailies = val;
  void updateDailies(Function(List<String>) updateFn) =>
      updateFn(_dailies ??= []);
  bool hasDailies() => _dailies != null;

  // "weeklies" field.
  List<String>? _weeklies;
  List<String> get weeklies => _weeklies ?? const [];
  set weeklies(List<String>? val) => _weeklies = val;
  void updateWeeklies(Function(List<String>) updateFn) =>
      updateFn(_weeklies ??= []);
  bool hasWeeklies() => _weeklies != null;

  // "monthlies" field.
  List<String>? _monthlies;
  List<String> get monthlies => _monthlies ?? const [];
  set monthlies(List<String>? val) => _monthlies = val;
  void updateMonthlies(Function(List<String>) updateFn) =>
      updateFn(_monthlies ??= []);
  bool hasMonthlies() => _monthlies != null;

  // "detailed" field.
  List<String>? _detailed;
  List<String> get detailed => _detailed ?? const [];
  set detailed(List<String>? val) => _detailed = val;
  void updateDetailed(Function(List<String>) updateFn) =>
      updateFn(_detailed ??= []);
  bool hasDetailed() => _detailed != null;

  static DailyWeeklyMonthlyDetailedStruct fromMap(Map<String, dynamic> data) =>
      DailyWeeklyMonthlyDetailedStruct(
        dailies: getDataList(data['dailies']),
        weeklies: getDataList(data['weeklies']),
        monthlies: getDataList(data['monthlies']),
        detailed: getDataList(data['detailed']),
      );

  static DailyWeeklyMonthlyDetailedStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? DailyWeeklyMonthlyDetailedStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'dailies': _dailies,
        'weeklies': _weeklies,
        'monthlies': _monthlies,
        'detailed': _detailed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dailies': serializeParam(
          _dailies,
          ParamType.String,
          true,
        ),
        'weeklies': serializeParam(
          _weeklies,
          ParamType.String,
          true,
        ),
        'monthlies': serializeParam(
          _monthlies,
          ParamType.String,
          true,
        ),
        'detailed': serializeParam(
          _detailed,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static DailyWeeklyMonthlyDetailedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DailyWeeklyMonthlyDetailedStruct(
        dailies: deserializeParam<String>(
          data['dailies'],
          ParamType.String,
          true,
        ),
        weeklies: deserializeParam<String>(
          data['weeklies'],
          ParamType.String,
          true,
        ),
        monthlies: deserializeParam<String>(
          data['monthlies'],
          ParamType.String,
          true,
        ),
        detailed: deserializeParam<String>(
          data['detailed'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DailyWeeklyMonthlyDetailedStruct(${toMap()})';
}

DailyWeeklyMonthlyDetailedStruct createDailyWeeklyMonthlyDetailedStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DailyWeeklyMonthlyDetailedStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DailyWeeklyMonthlyDetailedStruct? updateDailyWeeklyMonthlyDetailedStruct(
  DailyWeeklyMonthlyDetailedStruct? dailyWeeklyMonthlyDetailed, {
  bool clearUnsetFields = true,
}) =>
    dailyWeeklyMonthlyDetailed
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addDailyWeeklyMonthlyDetailedStructData(
  Map<String, dynamic> firestoreData,
  DailyWeeklyMonthlyDetailedStruct? dailyWeeklyMonthlyDetailed,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dailyWeeklyMonthlyDetailed == null) {
    return;
  }
  if (dailyWeeklyMonthlyDetailed.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      dailyWeeklyMonthlyDetailed.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dailyWeeklyMonthlyDetailedData =
      getDailyWeeklyMonthlyDetailedFirestoreData(
          dailyWeeklyMonthlyDetailed, forFieldValue);
  final nestedData = dailyWeeklyMonthlyDetailedData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final create = dailyWeeklyMonthlyDetailed.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDailyWeeklyMonthlyDetailedFirestoreData(
  DailyWeeklyMonthlyDetailedStruct? dailyWeeklyMonthlyDetailed, [
  bool forFieldValue = false,
]) {
  if (dailyWeeklyMonthlyDetailed == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dailyWeeklyMonthlyDetailed.toMap());

  // Add any Firestore field values
  dailyWeeklyMonthlyDetailed.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDailyWeeklyMonthlyDetailedListFirestoreData(
  List<DailyWeeklyMonthlyDetailedStruct>? dailyWeeklyMonthlyDetaileds,
) =>
    dailyWeeklyMonthlyDetaileds
        ?.map((e) => getDailyWeeklyMonthlyDetailedFirestoreData(e, true))
        .toList() ??
    [];
