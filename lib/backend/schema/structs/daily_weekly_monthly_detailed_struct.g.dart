// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weekly_monthly_detailed_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyWeeklyMonthlyDetailedStruct>
    _$dailyWeeklyMonthlyDetailedStructSerializer =
    new _$DailyWeeklyMonthlyDetailedStructSerializer();

class _$DailyWeeklyMonthlyDetailedStructSerializer
    implements StructuredSerializer<DailyWeeklyMonthlyDetailedStruct> {
  @override
  final Iterable<Type> types = const [
    DailyWeeklyMonthlyDetailedStruct,
    _$DailyWeeklyMonthlyDetailedStruct
  ];
  @override
  final String wireName = 'DailyWeeklyMonthlyDetailedStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DailyWeeklyMonthlyDetailedStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.dailies;
    if (value != null) {
      result
        ..add('dailies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.weeklies;
    if (value != null) {
      result
        ..add('weeklies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.monthlies;
    if (value != null) {
      result
        ..add('monthlies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.detailed;
    if (value != null) {
      result
        ..add('detailed')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  DailyWeeklyMonthlyDetailedStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyWeeklyMonthlyDetailedStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dailies':
          result.dailies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'weeklies':
          result.weeklies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'monthlies':
          result.monthlies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'detailed':
          result.detailed.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyWeeklyMonthlyDetailedStruct
    extends DailyWeeklyMonthlyDetailedStruct {
  @override
  final BuiltList<String>? dailies;
  @override
  final BuiltList<String>? weeklies;
  @override
  final BuiltList<String>? monthlies;
  @override
  final BuiltList<String>? detailed;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$DailyWeeklyMonthlyDetailedStruct(
          [void Function(DailyWeeklyMonthlyDetailedStructBuilder)? updates]) =>
      (new DailyWeeklyMonthlyDetailedStructBuilder()..update(updates))._build();

  _$DailyWeeklyMonthlyDetailedStruct._(
      {this.dailies,
      this.weeklies,
      this.monthlies,
      this.detailed,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(firestoreUtilData,
        r'DailyWeeklyMonthlyDetailedStruct', 'firestoreUtilData');
  }

  @override
  DailyWeeklyMonthlyDetailedStruct rebuild(
          void Function(DailyWeeklyMonthlyDetailedStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyWeeklyMonthlyDetailedStructBuilder toBuilder() =>
      new DailyWeeklyMonthlyDetailedStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyWeeklyMonthlyDetailedStruct &&
        dailies == other.dailies &&
        weeklies == other.weeklies &&
        monthlies == other.monthlies &&
        detailed == other.detailed &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dailies.hashCode);
    _$hash = $jc(_$hash, weeklies.hashCode);
    _$hash = $jc(_$hash, monthlies.hashCode);
    _$hash = $jc(_$hash, detailed.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyWeeklyMonthlyDetailedStruct')
          ..add('dailies', dailies)
          ..add('weeklies', weeklies)
          ..add('monthlies', monthlies)
          ..add('detailed', detailed)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class DailyWeeklyMonthlyDetailedStructBuilder
    implements
        Builder<DailyWeeklyMonthlyDetailedStruct,
            DailyWeeklyMonthlyDetailedStructBuilder> {
  _$DailyWeeklyMonthlyDetailedStruct? _$v;

  ListBuilder<String>? _dailies;
  ListBuilder<String> get dailies =>
      _$this._dailies ??= new ListBuilder<String>();
  set dailies(ListBuilder<String>? dailies) => _$this._dailies = dailies;

  ListBuilder<String>? _weeklies;
  ListBuilder<String> get weeklies =>
      _$this._weeklies ??= new ListBuilder<String>();
  set weeklies(ListBuilder<String>? weeklies) => _$this._weeklies = weeklies;

  ListBuilder<String>? _monthlies;
  ListBuilder<String> get monthlies =>
      _$this._monthlies ??= new ListBuilder<String>();
  set monthlies(ListBuilder<String>? monthlies) =>
      _$this._monthlies = monthlies;

  ListBuilder<String>? _detailed;
  ListBuilder<String> get detailed =>
      _$this._detailed ??= new ListBuilder<String>();
  set detailed(ListBuilder<String>? detailed) => _$this._detailed = detailed;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  DailyWeeklyMonthlyDetailedStructBuilder() {
    DailyWeeklyMonthlyDetailedStruct._initializeBuilder(this);
  }

  DailyWeeklyMonthlyDetailedStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dailies = $v.dailies?.toBuilder();
      _weeklies = $v.weeklies?.toBuilder();
      _monthlies = $v.monthlies?.toBuilder();
      _detailed = $v.detailed?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyWeeklyMonthlyDetailedStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyWeeklyMonthlyDetailedStruct;
  }

  @override
  void update(void Function(DailyWeeklyMonthlyDetailedStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyWeeklyMonthlyDetailedStruct build() => _build();

  _$DailyWeeklyMonthlyDetailedStruct _build() {
    _$DailyWeeklyMonthlyDetailedStruct _$result;
    try {
      _$result = _$v ??
          new _$DailyWeeklyMonthlyDetailedStruct._(
              dailies: _dailies?.build(),
              weeklies: _weeklies?.build(),
              monthlies: _monthlies?.build(),
              detailed: _detailed?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'DailyWeeklyMonthlyDetailedStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dailies';
        _dailies?.build();
        _$failedField = 'weeklies';
        _weeklies?.build();
        _$failedField = 'monthlies';
        _monthlies?.build();
        _$failedField = 'detailed';
        _detailed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DailyWeeklyMonthlyDetailedStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
