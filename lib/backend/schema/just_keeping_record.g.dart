// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'just_keeping_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JustKeepingRecord> _$justKeepingRecordSerializer =
    new _$JustKeepingRecordSerializer();

class _$JustKeepingRecordSerializer
    implements StructuredSerializer<JustKeepingRecord> {
  @override
  final Iterable<Type> types = const [JustKeepingRecord, _$JustKeepingRecord];
  @override
  final String wireName = 'JustKeepingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, JustKeepingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.generalCleaning;
    if (value != null) {
      result
        ..add('general_cleaning')
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
  JustKeepingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JustKeepingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'general_cleaning':
          result.generalCleaning.replace(serializers.deserialize(value,
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

class _$JustKeepingRecord extends JustKeepingRecord {
  @override
  final BuiltList<String>? generalCleaning;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$JustKeepingRecord(
          [void Function(JustKeepingRecordBuilder)? updates]) =>
      (new JustKeepingRecordBuilder()..update(updates))._build();

  _$JustKeepingRecord._({this.generalCleaning, this.ffRef}) : super._();

  @override
  JustKeepingRecord rebuild(void Function(JustKeepingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JustKeepingRecordBuilder toBuilder() =>
      new JustKeepingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JustKeepingRecord &&
        generalCleaning == other.generalCleaning &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generalCleaning.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JustKeepingRecord')
          ..add('generalCleaning', generalCleaning)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class JustKeepingRecordBuilder
    implements Builder<JustKeepingRecord, JustKeepingRecordBuilder> {
  _$JustKeepingRecord? _$v;

  ListBuilder<String>? _generalCleaning;
  ListBuilder<String> get generalCleaning =>
      _$this._generalCleaning ??= new ListBuilder<String>();
  set generalCleaning(ListBuilder<String>? generalCleaning) =>
      _$this._generalCleaning = generalCleaning;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  JustKeepingRecordBuilder() {
    JustKeepingRecord._initializeBuilder(this);
  }

  JustKeepingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generalCleaning = $v.generalCleaning?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JustKeepingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JustKeepingRecord;
  }

  @override
  void update(void Function(JustKeepingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JustKeepingRecord build() => _build();

  _$JustKeepingRecord _build() {
    _$JustKeepingRecord _$result;
    try {
      _$result = _$v ??
          new _$JustKeepingRecord._(
              generalCleaning: _generalCleaning?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'generalCleaning';
        _generalCleaning?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JustKeepingRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
