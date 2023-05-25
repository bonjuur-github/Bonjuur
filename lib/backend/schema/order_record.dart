import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "number_of_rooms" field.
  String? _numberOfRooms;
  String get numberOfRooms => _numberOfRooms ?? '';
  bool hasNumberOfRooms() => _numberOfRooms != null;

  // "number_of_pets" field.
  String? _numberOfPets;
  String get numberOfPets => _numberOfPets ?? '';
  bool hasNumberOfPets() => _numberOfPets != null;

  // "number_of_bathrooms" field.
  String? _numberOfBathrooms;
  String get numberOfBathrooms => _numberOfBathrooms ?? '';
  bool hasNumberOfBathrooms() => _numberOfBathrooms != null;

  // "number_of_household_people" field.
  String? _numberOfHouseholdPeople;
  String get numberOfHouseholdPeople => _numberOfHouseholdPeople ?? '';
  bool hasNumberOfHouseholdPeople() => _numberOfHouseholdPeople != null;

  // "time_slot" field.
  String? _timeSlot;
  String get timeSlot => _timeSlot ?? '';
  bool hasTimeSlot() => _timeSlot != null;

  // "package_start_date" field.
  DateTime? _packageStartDate;
  DateTime? get packageStartDate => _packageStartDate;
  bool hasPackageStartDate() => _packageStartDate != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "package_name" field.
  String? _packageName;
  String get packageName => _packageName ?? '';
  bool hasPackageName() => _packageName != null;

  // "order_uid" field.
  String? _orderUid;
  String get orderUid => _orderUid ?? '';
  bool hasOrderUid() => _orderUid != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _numberOfRooms = snapshotData['number_of_rooms'] as String?;
    _numberOfPets = snapshotData['number_of_pets'] as String?;
    _numberOfBathrooms = snapshotData['number_of_bathrooms'] as String?;
    _numberOfHouseholdPeople =
        snapshotData['number_of_household_people'] as String?;
    _timeSlot = snapshotData['time_slot'] as String?;
    _packageStartDate = snapshotData['package_start_date'] as DateTime?;
    _orderDate = snapshotData['order_date'] as DateTime?;
    _packageName = snapshotData['package_name'] as String?;
    _orderUid = snapshotData['order_uid'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createOrderRecordData({
  double? salePrice,
  String? numberOfRooms,
  String? numberOfPets,
  String? numberOfBathrooms,
  String? numberOfHouseholdPeople,
  String? timeSlot,
  DateTime? packageStartDate,
  DateTime? orderDate,
  String? packageName,
  String? orderUid,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sale_price': salePrice,
      'number_of_rooms': numberOfRooms,
      'number_of_pets': numberOfPets,
      'number_of_bathrooms': numberOfBathrooms,
      'number_of_household_people': numberOfHouseholdPeople,
      'time_slot': timeSlot,
      'package_start_date': packageStartDate,
      'order_date': orderDate,
      'package_name': packageName,
      'order_uid': orderUid,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}
