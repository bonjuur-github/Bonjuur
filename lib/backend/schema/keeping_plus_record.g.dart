// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keeping_plus_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<KeepingPlusRecord> _$keepingPlusRecordSerializer =
    new _$KeepingPlusRecordSerializer();

class _$KeepingPlusRecordSerializer
    implements StructuredSerializer<KeepingPlusRecord> {
  @override
  final Iterable<Type> types = const [KeepingPlusRecord, _$KeepingPlusRecord];
  @override
  final String wireName = 'KeepingPlusRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, KeepingPlusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.kitchen;
    if (value != null) {
      result
        ..add('kitchen')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.diningRoom;
    if (value != null) {
      result
        ..add('dining_room')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.familyRoom;
    if (value != null) {
      result
        ..add('family_room')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.bathroom;
    if (value != null) {
      result
        ..add('bathroom')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.masterBedroom;
    if (value != null) {
      result
        ..add('master_bedroom')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.bedroom;
    if (value != null) {
      result
        ..add('bedroom')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.masterBathroom;
    if (value != null) {
      result
        ..add('master_bathroom')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.officeAndStudy;
    if (value != null) {
      result
        ..add('office_and_study')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  KeepingPlusRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeepingPlusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'kitchen':
          result.kitchen.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'dining_room':
          result.diningRoom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'family_room':
          result.familyRoom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'bathroom':
          result.bathroom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'master_bedroom':
          result.masterBedroom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'bedroom':
          result.bedroom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'master_bathroom':
          result.masterBathroom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'office_and_study':
          result.officeAndStudy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$KeepingPlusRecord extends KeepingPlusRecord {
  @override
  final BuiltList<String>? kitchen;
  @override
  final BuiltList<String>? diningRoom;
  @override
  final BuiltList<String>? familyRoom;
  @override
  final BuiltList<String>? bathroom;
  @override
  final BuiltList<String>? masterBedroom;
  @override
  final BuiltList<String>? bedroom;
  @override
  final BuiltList<String>? masterBathroom;
  @override
  final BuiltList<String>? officeAndStudy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$KeepingPlusRecord(
          [void Function(KeepingPlusRecordBuilder)? updates]) =>
      (new KeepingPlusRecordBuilder()..update(updates))._build();

  _$KeepingPlusRecord._(
      {this.kitchen,
      this.diningRoom,
      this.familyRoom,
      this.bathroom,
      this.masterBedroom,
      this.bedroom,
      this.masterBathroom,
      this.officeAndStudy,
      this.ffRef})
      : super._();

  @override
  KeepingPlusRecord rebuild(void Function(KeepingPlusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeepingPlusRecordBuilder toBuilder() =>
      new KeepingPlusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeepingPlusRecord &&
        kitchen == other.kitchen &&
        diningRoom == other.diningRoom &&
        familyRoom == other.familyRoom &&
        bathroom == other.bathroom &&
        masterBedroom == other.masterBedroom &&
        bedroom == other.bedroom &&
        masterBathroom == other.masterBathroom &&
        officeAndStudy == other.officeAndStudy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kitchen.hashCode);
    _$hash = $jc(_$hash, diningRoom.hashCode);
    _$hash = $jc(_$hash, familyRoom.hashCode);
    _$hash = $jc(_$hash, bathroom.hashCode);
    _$hash = $jc(_$hash, masterBedroom.hashCode);
    _$hash = $jc(_$hash, bedroom.hashCode);
    _$hash = $jc(_$hash, masterBathroom.hashCode);
    _$hash = $jc(_$hash, officeAndStudy.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeepingPlusRecord')
          ..add('kitchen', kitchen)
          ..add('diningRoom', diningRoom)
          ..add('familyRoom', familyRoom)
          ..add('bathroom', bathroom)
          ..add('masterBedroom', masterBedroom)
          ..add('bedroom', bedroom)
          ..add('masterBathroom', masterBathroom)
          ..add('officeAndStudy', officeAndStudy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class KeepingPlusRecordBuilder
    implements Builder<KeepingPlusRecord, KeepingPlusRecordBuilder> {
  _$KeepingPlusRecord? _$v;

  ListBuilder<String>? _kitchen;
  ListBuilder<String> get kitchen =>
      _$this._kitchen ??= new ListBuilder<String>();
  set kitchen(ListBuilder<String>? kitchen) => _$this._kitchen = kitchen;

  ListBuilder<String>? _diningRoom;
  ListBuilder<String> get diningRoom =>
      _$this._diningRoom ??= new ListBuilder<String>();
  set diningRoom(ListBuilder<String>? diningRoom) =>
      _$this._diningRoom = diningRoom;

  ListBuilder<String>? _familyRoom;
  ListBuilder<String> get familyRoom =>
      _$this._familyRoom ??= new ListBuilder<String>();
  set familyRoom(ListBuilder<String>? familyRoom) =>
      _$this._familyRoom = familyRoom;

  ListBuilder<String>? _bathroom;
  ListBuilder<String> get bathroom =>
      _$this._bathroom ??= new ListBuilder<String>();
  set bathroom(ListBuilder<String>? bathroom) => _$this._bathroom = bathroom;

  ListBuilder<String>? _masterBedroom;
  ListBuilder<String> get masterBedroom =>
      _$this._masterBedroom ??= new ListBuilder<String>();
  set masterBedroom(ListBuilder<String>? masterBedroom) =>
      _$this._masterBedroom = masterBedroom;

  ListBuilder<String>? _bedroom;
  ListBuilder<String> get bedroom =>
      _$this._bedroom ??= new ListBuilder<String>();
  set bedroom(ListBuilder<String>? bedroom) => _$this._bedroom = bedroom;

  ListBuilder<String>? _masterBathroom;
  ListBuilder<String> get masterBathroom =>
      _$this._masterBathroom ??= new ListBuilder<String>();
  set masterBathroom(ListBuilder<String>? masterBathroom) =>
      _$this._masterBathroom = masterBathroom;

  ListBuilder<String>? _officeAndStudy;
  ListBuilder<String> get officeAndStudy =>
      _$this._officeAndStudy ??= new ListBuilder<String>();
  set officeAndStudy(ListBuilder<String>? officeAndStudy) =>
      _$this._officeAndStudy = officeAndStudy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  KeepingPlusRecordBuilder() {
    KeepingPlusRecord._initializeBuilder(this);
  }

  KeepingPlusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kitchen = $v.kitchen?.toBuilder();
      _diningRoom = $v.diningRoom?.toBuilder();
      _familyRoom = $v.familyRoom?.toBuilder();
      _bathroom = $v.bathroom?.toBuilder();
      _masterBedroom = $v.masterBedroom?.toBuilder();
      _bedroom = $v.bedroom?.toBuilder();
      _masterBathroom = $v.masterBathroom?.toBuilder();
      _officeAndStudy = $v.officeAndStudy?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeepingPlusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeepingPlusRecord;
  }

  @override
  void update(void Function(KeepingPlusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeepingPlusRecord build() => _build();

  _$KeepingPlusRecord _build() {
    _$KeepingPlusRecord _$result;
    try {
      _$result = _$v ??
          new _$KeepingPlusRecord._(
              kitchen: _kitchen?.build(),
              diningRoom: _diningRoom?.build(),
              familyRoom: _familyRoom?.build(),
              bathroom: _bathroom?.build(),
              masterBedroom: _masterBedroom?.build(),
              bedroom: _bedroom?.build(),
              masterBathroom: _masterBathroom?.build(),
              officeAndStudy: _officeAndStudy?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kitchen';
        _kitchen?.build();
        _$failedField = 'diningRoom';
        _diningRoom?.build();
        _$failedField = 'familyRoom';
        _familyRoom?.build();
        _$failedField = 'bathroom';
        _bathroom?.build();
        _$failedField = 'masterBedroom';
        _masterBedroom?.build();
        _$failedField = 'bedroom';
        _bedroom?.build();
        _$failedField = 'masterBathroom';
        _masterBathroom?.build();
        _$failedField = 'officeAndStudy';
        _officeAndStudy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KeepingPlusRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
