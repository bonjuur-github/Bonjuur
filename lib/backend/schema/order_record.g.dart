// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderRecord> _$orderRecordSerializer = new _$OrderRecordSerializer();

class _$OrderRecordSerializer implements StructuredSerializer<OrderRecord> {
  @override
  final Iterable<Type> types = const [OrderRecord, _$OrderRecord];
  @override
  final String wireName = 'OrderRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrderRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.numberOfRooms;
    if (value != null) {
      result
        ..add('number_of_rooms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfPets;
    if (value != null) {
      result
        ..add('number_of_pets')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfBathrooms;
    if (value != null) {
      result
        ..add('number_of_bathrooms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfHouseholdPeople;
    if (value != null) {
      result
        ..add('number_of_household_people')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeSlot;
    if (value != null) {
      result
        ..add('time_slot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.packageStartDate;
    if (value != null) {
      result
        ..add('package_start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderDate;
    if (value != null) {
      result
        ..add('order_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.packageName;
    if (value != null) {
      result
        ..add('package_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderUid;
    if (value != null) {
      result
        ..add('order_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrderRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'number_of_rooms':
          result.numberOfRooms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_pets':
          result.numberOfPets = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_bathrooms':
          result.numberOfBathrooms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_household_people':
          result.numberOfHouseholdPeople = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_slot':
          result.timeSlot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'package_start_date':
          result.packageStartDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'order_date':
          result.orderDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'package_name':
          result.packageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order_uid':
          result.orderUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderRecord extends OrderRecord {
  @override
  final double? salePrice;
  @override
  final String? numberOfRooms;
  @override
  final String? numberOfPets;
  @override
  final String? numberOfBathrooms;
  @override
  final String? numberOfHouseholdPeople;
  @override
  final String? timeSlot;
  @override
  final DateTime? packageStartDate;
  @override
  final DateTime? orderDate;
  @override
  final String? packageName;
  @override
  final String? orderUid;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrderRecord([void Function(OrderRecordBuilder)? updates]) =>
      (new OrderRecordBuilder()..update(updates))._build();

  _$OrderRecord._(
      {this.salePrice,
      this.numberOfRooms,
      this.numberOfPets,
      this.numberOfBathrooms,
      this.numberOfHouseholdPeople,
      this.timeSlot,
      this.packageStartDate,
      this.orderDate,
      this.packageName,
      this.orderUid,
      this.createdBy,
      this.ffRef})
      : super._();

  @override
  OrderRecord rebuild(void Function(OrderRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderRecordBuilder toBuilder() => new OrderRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderRecord &&
        salePrice == other.salePrice &&
        numberOfRooms == other.numberOfRooms &&
        numberOfPets == other.numberOfPets &&
        numberOfBathrooms == other.numberOfBathrooms &&
        numberOfHouseholdPeople == other.numberOfHouseholdPeople &&
        timeSlot == other.timeSlot &&
        packageStartDate == other.packageStartDate &&
        orderDate == other.orderDate &&
        packageName == other.packageName &&
        orderUid == other.orderUid &&
        createdBy == other.createdBy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, salePrice.hashCode);
    _$hash = $jc(_$hash, numberOfRooms.hashCode);
    _$hash = $jc(_$hash, numberOfPets.hashCode);
    _$hash = $jc(_$hash, numberOfBathrooms.hashCode);
    _$hash = $jc(_$hash, numberOfHouseholdPeople.hashCode);
    _$hash = $jc(_$hash, timeSlot.hashCode);
    _$hash = $jc(_$hash, packageStartDate.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, packageName.hashCode);
    _$hash = $jc(_$hash, orderUid.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderRecord')
          ..add('salePrice', salePrice)
          ..add('numberOfRooms', numberOfRooms)
          ..add('numberOfPets', numberOfPets)
          ..add('numberOfBathrooms', numberOfBathrooms)
          ..add('numberOfHouseholdPeople', numberOfHouseholdPeople)
          ..add('timeSlot', timeSlot)
          ..add('packageStartDate', packageStartDate)
          ..add('orderDate', orderDate)
          ..add('packageName', packageName)
          ..add('orderUid', orderUid)
          ..add('createdBy', createdBy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrderRecordBuilder implements Builder<OrderRecord, OrderRecordBuilder> {
  _$OrderRecord? _$v;

  double? _salePrice;
  double? get salePrice => _$this._salePrice;
  set salePrice(double? salePrice) => _$this._salePrice = salePrice;

  String? _numberOfRooms;
  String? get numberOfRooms => _$this._numberOfRooms;
  set numberOfRooms(String? numberOfRooms) =>
      _$this._numberOfRooms = numberOfRooms;

  String? _numberOfPets;
  String? get numberOfPets => _$this._numberOfPets;
  set numberOfPets(String? numberOfPets) => _$this._numberOfPets = numberOfPets;

  String? _numberOfBathrooms;
  String? get numberOfBathrooms => _$this._numberOfBathrooms;
  set numberOfBathrooms(String? numberOfBathrooms) =>
      _$this._numberOfBathrooms = numberOfBathrooms;

  String? _numberOfHouseholdPeople;
  String? get numberOfHouseholdPeople => _$this._numberOfHouseholdPeople;
  set numberOfHouseholdPeople(String? numberOfHouseholdPeople) =>
      _$this._numberOfHouseholdPeople = numberOfHouseholdPeople;

  String? _timeSlot;
  String? get timeSlot => _$this._timeSlot;
  set timeSlot(String? timeSlot) => _$this._timeSlot = timeSlot;

  DateTime? _packageStartDate;
  DateTime? get packageStartDate => _$this._packageStartDate;
  set packageStartDate(DateTime? packageStartDate) =>
      _$this._packageStartDate = packageStartDate;

  DateTime? _orderDate;
  DateTime? get orderDate => _$this._orderDate;
  set orderDate(DateTime? orderDate) => _$this._orderDate = orderDate;

  String? _packageName;
  String? get packageName => _$this._packageName;
  set packageName(String? packageName) => _$this._packageName = packageName;

  String? _orderUid;
  String? get orderUid => _$this._orderUid;
  set orderUid(String? orderUid) => _$this._orderUid = orderUid;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrderRecordBuilder() {
    OrderRecord._initializeBuilder(this);
  }

  OrderRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _salePrice = $v.salePrice;
      _numberOfRooms = $v.numberOfRooms;
      _numberOfPets = $v.numberOfPets;
      _numberOfBathrooms = $v.numberOfBathrooms;
      _numberOfHouseholdPeople = $v.numberOfHouseholdPeople;
      _timeSlot = $v.timeSlot;
      _packageStartDate = $v.packageStartDate;
      _orderDate = $v.orderDate;
      _packageName = $v.packageName;
      _orderUid = $v.orderUid;
      _createdBy = $v.createdBy;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderRecord;
  }

  @override
  void update(void Function(OrderRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderRecord build() => _build();

  _$OrderRecord _build() {
    final _$result = _$v ??
        new _$OrderRecord._(
            salePrice: salePrice,
            numberOfRooms: numberOfRooms,
            numberOfPets: numberOfPets,
            numberOfBathrooms: numberOfBathrooms,
            numberOfHouseholdPeople: numberOfHouseholdPeople,
            timeSlot: timeSlot,
            packageStartDate: packageStartDate,
            orderDate: orderDate,
            packageName: packageName,
            orderUid: orderUid,
            createdBy: createdBy,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
