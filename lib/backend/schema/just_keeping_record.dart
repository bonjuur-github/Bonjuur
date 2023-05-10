import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'just_keeping_record.g.dart';

abstract class JustKeepingRecord
    implements Built<JustKeepingRecord, JustKeepingRecordBuilder> {
  static Serializer<JustKeepingRecord> get serializer =>
      _$justKeepingRecordSerializer;

  @BuiltValueField(wireName: 'general_cleaning')
  BuiltList<String>? get generalCleaning;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(JustKeepingRecordBuilder builder) =>
      builder..generalCleaning = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('just_keeping');

  static Stream<JustKeepingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<JustKeepingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  JustKeepingRecord._();
  factory JustKeepingRecord([void Function(JustKeepingRecordBuilder) updates]) =
      _$JustKeepingRecord;

  static JustKeepingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createJustKeepingRecordData() {
  final firestoreData = serializers.toFirestore(
    JustKeepingRecord.serializer,
    JustKeepingRecord(
      (j) => j..generalCleaning = null,
    ),
  );

  return firestoreData;
}
