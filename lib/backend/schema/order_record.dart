import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_record.g.dart';

abstract class OrderRecord implements Built<OrderRecord, OrderRecordBuilder> {
  static Serializer<OrderRecord> get serializer => _$orderRecordSerializer;

  @BuiltValueField(wireName: 'sale_price')
  double? get salePrice;

  @BuiltValueField(wireName: 'number_of_rooms')
  String? get numberOfRooms;

  @BuiltValueField(wireName: 'number_of_pets')
  String? get numberOfPets;

  @BuiltValueField(wireName: 'number_of_bathrooms')
  String? get numberOfBathrooms;

  @BuiltValueField(wireName: 'number_of_household_people')
  String? get numberOfHouseholdPeople;

  @BuiltValueField(wireName: 'time_slot')
  String? get timeSlot;

  @BuiltValueField(wireName: 'package_start_date')
  DateTime? get packageStartDate;

  @BuiltValueField(wireName: 'order_date')
  DateTime? get orderDate;

  @BuiltValueField(wireName: 'package_name')
  String? get packageName;

  @BuiltValueField(wireName: 'order_uid')
  String? get orderUid;

  @BuiltValueField(wireName: 'created_by')
  DocumentReference? get createdBy;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrderRecordBuilder builder) => builder
    ..salePrice = 0.0
    ..numberOfRooms = ''
    ..numberOfPets = ''
    ..numberOfBathrooms = ''
    ..numberOfHouseholdPeople = ''
    ..timeSlot = ''
    ..packageName = ''
    ..orderUid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrderRecord._();
  factory OrderRecord([void Function(OrderRecordBuilder) updates]) =
      _$OrderRecord;

  static OrderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    OrderRecord.serializer,
    OrderRecord(
      (o) => o
        ..salePrice = salePrice
        ..numberOfRooms = numberOfRooms
        ..numberOfPets = numberOfPets
        ..numberOfBathrooms = numberOfBathrooms
        ..numberOfHouseholdPeople = numberOfHouseholdPeople
        ..timeSlot = timeSlot
        ..packageStartDate = packageStartDate
        ..orderDate = orderDate
        ..packageName = packageName
        ..orderUid = orderUid
        ..createdBy = createdBy,
    ),
  );

  return firestoreData;
}
