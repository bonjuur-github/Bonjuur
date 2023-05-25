import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KeepingPlusRecord extends FirestoreRecord {
  KeepingPlusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "kitchen" field.
  List<String>? _kitchen;
  List<String> get kitchen => _kitchen ?? const [];
  bool hasKitchen() => _kitchen != null;

  // "dining_room" field.
  List<String>? _diningRoom;
  List<String> get diningRoom => _diningRoom ?? const [];
  bool hasDiningRoom() => _diningRoom != null;

  // "family_room" field.
  List<String>? _familyRoom;
  List<String> get familyRoom => _familyRoom ?? const [];
  bool hasFamilyRoom() => _familyRoom != null;

  // "bathroom" field.
  List<String>? _bathroom;
  List<String> get bathroom => _bathroom ?? const [];
  bool hasBathroom() => _bathroom != null;

  // "master_bedroom" field.
  List<String>? _masterBedroom;
  List<String> get masterBedroom => _masterBedroom ?? const [];
  bool hasMasterBedroom() => _masterBedroom != null;

  // "bedroom" field.
  List<String>? _bedroom;
  List<String> get bedroom => _bedroom ?? const [];
  bool hasBedroom() => _bedroom != null;

  // "master_bathroom" field.
  List<String>? _masterBathroom;
  List<String> get masterBathroom => _masterBathroom ?? const [];
  bool hasMasterBathroom() => _masterBathroom != null;

  // "office_and_study" field.
  List<String>? _officeAndStudy;
  List<String> get officeAndStudy => _officeAndStudy ?? const [];
  bool hasOfficeAndStudy() => _officeAndStudy != null;

  void _initializeFields() {
    _kitchen = getDataList(snapshotData['kitchen']);
    _diningRoom = getDataList(snapshotData['dining_room']);
    _familyRoom = getDataList(snapshotData['family_room']);
    _bathroom = getDataList(snapshotData['bathroom']);
    _masterBedroom = getDataList(snapshotData['master_bedroom']);
    _bedroom = getDataList(snapshotData['bedroom']);
    _masterBathroom = getDataList(snapshotData['master_bathroom']);
    _officeAndStudy = getDataList(snapshotData['office_and_study']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('keeping_plus');

  static Stream<KeepingPlusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KeepingPlusRecord.fromSnapshot(s));

  static Future<KeepingPlusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KeepingPlusRecord.fromSnapshot(s));

  static KeepingPlusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      KeepingPlusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KeepingPlusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KeepingPlusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KeepingPlusRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createKeepingPlusRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}
