import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_weekly_monthly_detailed_struct.g.dart';

abstract class DailyWeeklyMonthlyDetailedStruct
    implements
        Built<DailyWeeklyMonthlyDetailedStruct,
            DailyWeeklyMonthlyDetailedStructBuilder> {
  static Serializer<DailyWeeklyMonthlyDetailedStruct> get serializer =>
      _$dailyWeeklyMonthlyDetailedStructSerializer;

  BuiltList<String>? get dailies;

  BuiltList<String>? get weeklies;

  BuiltList<String>? get monthlies;

  BuiltList<String>? get detailed;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(
          DailyWeeklyMonthlyDetailedStructBuilder builder) =>
      builder
        ..dailies = ListBuilder()
        ..weeklies = ListBuilder()
        ..monthlies = ListBuilder()
        ..detailed = ListBuilder()
        ..firestoreUtilData = FirestoreUtilData();

  DailyWeeklyMonthlyDetailedStruct._();
  factory DailyWeeklyMonthlyDetailedStruct(
          [void Function(DailyWeeklyMonthlyDetailedStructBuilder) updates]) =
      _$DailyWeeklyMonthlyDetailedStruct;
}

DailyWeeklyMonthlyDetailedStruct createDailyWeeklyMonthlyDetailedStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DailyWeeklyMonthlyDetailedStruct(
      (d) => d
        ..dailies = null
        ..weeklies = null
        ..monthlies = null
        ..detailed = null
        ..firestoreUtilData = FirestoreUtilData(
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
    dailyWeeklyMonthlyDetailed != null
        ? (dailyWeeklyMonthlyDetailed.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

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

  return;
}

Map<String, dynamic> getDailyWeeklyMonthlyDetailedFirestoreData(
  DailyWeeklyMonthlyDetailedStruct? dailyWeeklyMonthlyDetailed, [
  bool forFieldValue = false,
]) {
  if (dailyWeeklyMonthlyDetailed == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      DailyWeeklyMonthlyDetailedStruct.serializer, dailyWeeklyMonthlyDetailed);

  // Add any Firestore field values
  dailyWeeklyMonthlyDetailed.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDailyWeeklyMonthlyDetailedListFirestoreData(
  List<DailyWeeklyMonthlyDetailedStruct>? dailyWeeklyMonthlyDetaileds,
) =>
    dailyWeeklyMonthlyDetaileds
        ?.map((d) => getDailyWeeklyMonthlyDetailedFirestoreData(d, true))
        .toList() ??
    [];
