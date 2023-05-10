import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'keeping_plus_record.g.dart';

abstract class KeepingPlusRecord
    implements Built<KeepingPlusRecord, KeepingPlusRecordBuilder> {
  static Serializer<KeepingPlusRecord> get serializer =>
      _$keepingPlusRecordSerializer;

  BuiltList<String>? get kitchen;

  @BuiltValueField(wireName: 'dining_room')
  BuiltList<String>? get diningRoom;

  @BuiltValueField(wireName: 'family_room')
  BuiltList<String>? get familyRoom;

  BuiltList<String>? get bathroom;

  @BuiltValueField(wireName: 'master_bedroom')
  BuiltList<String>? get masterBedroom;

  BuiltList<String>? get bedroom;

  @BuiltValueField(wireName: 'master_bathroom')
  BuiltList<String>? get masterBathroom;

  @BuiltValueField(wireName: 'office_and_study')
  BuiltList<String>? get officeAndStudy;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(KeepingPlusRecordBuilder builder) => builder
    ..kitchen = ListBuilder()
    ..diningRoom = ListBuilder()
    ..familyRoom = ListBuilder()
    ..bathroom = ListBuilder()
    ..masterBedroom = ListBuilder()
    ..bedroom = ListBuilder()
    ..masterBathroom = ListBuilder()
    ..officeAndStudy = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('keeping_plus');

  static Stream<KeepingPlusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<KeepingPlusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  KeepingPlusRecord._();
  factory KeepingPlusRecord([void Function(KeepingPlusRecordBuilder) updates]) =
      _$KeepingPlusRecord;

  static KeepingPlusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createKeepingPlusRecordData() {
  final firestoreData = serializers.toFirestore(
    KeepingPlusRecord.serializer,
    KeepingPlusRecord(
      (k) => k
        ..kitchen = null
        ..diningRoom = null
        ..familyRoom = null
        ..bathroom = null
        ..masterBedroom = null
        ..bedroom = null
        ..masterBathroom = null
        ..officeAndStudy = null,
    ),
  );

  return firestoreData;
}
