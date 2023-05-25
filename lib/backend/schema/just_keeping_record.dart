import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JustKeepingRecord extends FirestoreRecord {
  JustKeepingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "general_cleaning" field.
  List<String>? _generalCleaning;
  List<String> get generalCleaning => _generalCleaning ?? const [];
  bool hasGeneralCleaning() => _generalCleaning != null;

  void _initializeFields() {
    _generalCleaning = getDataList(snapshotData['general_cleaning']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('just_keeping');

  static Stream<JustKeepingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JustKeepingRecord.fromSnapshot(s));

  static Future<JustKeepingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JustKeepingRecord.fromSnapshot(s));

  static JustKeepingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JustKeepingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JustKeepingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JustKeepingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JustKeepingRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createJustKeepingRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}
