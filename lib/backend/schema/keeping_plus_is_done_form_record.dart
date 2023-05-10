import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'keeping_plus_is_done_form_record.g.dart';

abstract class KeepingPlusIsDoneFormRecord
    implements
        Built<KeepingPlusIsDoneFormRecord, KeepingPlusIsDoneFormRecordBuilder> {
  static Serializer<KeepingPlusIsDoneFormRecord> get serializer =>
      _$keepingPlusIsDoneFormRecordSerializer;

  @BuiltValueField(wireName: 'ki_d_1')
  bool? get kiD1;

  @BuiltValueField(wireName: 'ki_d_2')
  bool? get kiD2;

  @BuiltValueField(wireName: 'ki_d_3')
  bool? get kiD3;

  @BuiltValueField(wireName: 'ki_d_4')
  bool? get kiD4;

  @BuiltValueField(wireName: 'ki_d_5')
  bool? get kiD5;

  @BuiltValueField(wireName: 'ki_d_6')
  bool? get kiD6;

  @BuiltValueField(wireName: 'ki_d_7')
  bool? get kiD7;

  @BuiltValueField(wireName: 'ki_d_8')
  bool? get kiD8;

  @BuiltValueField(wireName: 'diro_d_1')
  bool? get diroD1;

  @BuiltValueField(wireName: 'diro_d_2')
  bool? get diroD2;

  @BuiltValueField(wireName: 'diro_d_3')
  bool? get diroD3;

  @BuiltValueField(wireName: 'ofstu_d_1')
  bool? get ofstuD1;

  @BuiltValueField(wireName: 'ofstu_d_2')
  bool? get ofstuD2;

  @BuiltValueField(wireName: 'ofstu_d_3')
  bool? get ofstuD3;

  @BuiltValueField(wireName: 'faro_d_1')
  bool? get faroD1;

  @BuiltValueField(wireName: 'faro_d_2')
  bool? get faroD2;

  @BuiltValueField(wireName: 'faro_d_3')
  bool? get faroD3;

  @BuiltValueField(wireName: 'ba_d_1')
  bool? get baD1;

  @BuiltValueField(wireName: 'ba_d_2')
  bool? get baD2;

  @BuiltValueField(wireName: 'ba_d_3')
  bool? get baD3;

  @BuiltValueField(wireName: 'ba_d_4')
  bool? get baD4;

  @BuiltValueField(wireName: 'ba_d_5')
  bool? get baD5;

  @BuiltValueField(wireName: 'ba_d_6')
  bool? get baD6;

  @BuiltValueField(wireName: 'be_d_1')
  bool? get beD1;

  @BuiltValueField(wireName: 'be_d_2')
  bool? get beD2;

  @BuiltValueField(wireName: 'be_d_3')
  bool? get beD3;

  @BuiltValueField(wireName: 'be_d_4')
  bool? get beD4;

  @BuiltValueField(wireName: 'ki_w_1')
  bool? get kiW1;

  @BuiltValueField(wireName: 'ki_w_2')
  bool? get kiW2;

  @BuiltValueField(wireName: 'ki_w_3')
  bool? get kiW3;

  @BuiltValueField(wireName: 'ki_w_4')
  bool? get kiW4;

  @BuiltValueField(wireName: 'ki_w_5')
  bool? get kiW5;

  @BuiltValueField(wireName: 'diro_w_1')
  bool? get diroW1;

  @BuiltValueField(wireName: 'diro_w_2')
  bool? get diroW2;

  @BuiltValueField(wireName: 'diro_w_3')
  bool? get diroW3;

  @BuiltValueField(wireName: 'diro_w_4')
  bool? get diroW4;

  @BuiltValueField(wireName: 'diro_w_5')
  bool? get diroW5;

  @BuiltValueField(wireName: 'diro_w_6')
  bool? get diroW6;

  @BuiltValueField(wireName: 'diro_w_7')
  bool? get diroW7;

  @BuiltValueField(wireName: 'ofstu_w_1')
  bool? get ofstuW1;

  @BuiltValueField(wireName: 'ofstu_w_2')
  bool? get ofstuW2;

  @BuiltValueField(wireName: 'ofstu_w_3')
  bool? get ofstuW3;

  @BuiltValueField(wireName: 'ofstu_w_4')
  bool? get ofstuW4;

  @BuiltValueField(wireName: 'ofstu_w_5')
  bool? get ofstuW5;

  @BuiltValueField(wireName: 'ofstu_w_6')
  bool? get ofstuW6;

  @BuiltValueField(wireName: 'faro_w_1')
  bool? get faroW1;

  @BuiltValueField(wireName: 'faro_w_2')
  bool? get faroW2;

  @BuiltValueField(wireName: 'faro_w_3')
  bool? get faroW3;

  @BuiltValueField(wireName: 'faro_w_4')
  bool? get faroW4;

  @BuiltValueField(wireName: 'faro_w_5')
  bool? get faroW5;

  @BuiltValueField(wireName: 'faro_w_6')
  bool? get faroW6;

  @BuiltValueField(wireName: 'ba_w_1')
  bool? get baW1;

  @BuiltValueField(wireName: 'ba_w_2')
  bool? get baW2;

  @BuiltValueField(wireName: 'ba_w_3')
  bool? get baW3;

  @BuiltValueField(wireName: 'ba_w_4')
  bool? get baW4;

  @BuiltValueField(wireName: 'ba_w_5')
  bool? get baW5;

  @BuiltValueField(wireName: 'ba_w_6')
  bool? get baW6;

  @BuiltValueField(wireName: 'ba_w_7')
  bool? get baW7;

  @BuiltValueField(wireName: 'be_w_1')
  bool? get beW1;

  @BuiltValueField(wireName: 'be_w_2')
  bool? get beW2;

  @BuiltValueField(wireName: 'be_w_3')
  bool? get beW3;

  @BuiltValueField(wireName: 'be_w_4')
  bool? get beW4;

  @BuiltValueField(wireName: 'be_w_5')
  bool? get beW5;

  @BuiltValueField(wireName: 'be_w_6')
  bool? get beW6;

  @BuiltValueField(wireName: 'be_w_7')
  bool? get beW7;

  @BuiltValueField(wireName: 'ki_m_1')
  bool? get kiM1;

  @BuiltValueField(wireName: 'ki_m_2')
  bool? get kiM2;

  @BuiltValueField(wireName: 'ki_m_3')
  bool? get kiM3;

  @BuiltValueField(wireName: 'ki_m_4')
  bool? get kiM4;

  @BuiltValueField(wireName: 'ki_m_5')
  bool? get kiM5;

  @BuiltValueField(wireName: 'ki_m_6')
  bool? get kiM6;

  @BuiltValueField(wireName: 'ki_m_7')
  bool? get kiM7;

  @BuiltValueField(wireName: 'ki_m_8')
  bool? get kiM8;

  @BuiltValueField(wireName: 'ki_m_9')
  bool? get kiM9;

  @BuiltValueField(wireName: 'ki_m_10')
  bool? get kiM10;

  @BuiltValueField(wireName: 'diro_m_1')
  bool? get diroM1;

  @BuiltValueField(wireName: 'diro_m_2')
  bool? get diroM2;

  @BuiltValueField(wireName: 'diro_m_3')
  bool? get diroM3;

  @BuiltValueField(wireName: 'diro_m_4')
  bool? get diroM4;

  @BuiltValueField(wireName: 'diro_m_5')
  bool? get diroM5;

  @BuiltValueField(wireName: 'diro_m_6')
  bool? get diroM6;

  @BuiltValueField(wireName: 'diro_m_7')
  bool? get diroM7;

  @BuiltValueField(wireName: 'diro_m_8')
  bool? get diroM8;

  @BuiltValueField(wireName: 'ofstu_m_1')
  bool? get ofstuM1;

  @BuiltValueField(wireName: 'ofstu_m_2')
  bool? get ofstuM2;

  @BuiltValueField(wireName: 'ofstu_m_3')
  bool? get ofstuM3;

  @BuiltValueField(wireName: 'ofstu_m_4')
  bool? get ofstuM4;

  @BuiltValueField(wireName: 'ofstu_m_5')
  bool? get ofstuM5;

  @BuiltValueField(wireName: 'ofstu_m_6')
  bool? get ofstuM6;

  @BuiltValueField(wireName: 'ofstu_m_7')
  bool? get ofstuM7;

  @BuiltValueField(wireName: 'ofstu_m_8')
  bool? get ofstuM8;

  @BuiltValueField(wireName: 'faro_m_1')
  bool? get faroM1;

  @BuiltValueField(wireName: 'faro_m_2')
  bool? get faroM2;

  @BuiltValueField(wireName: 'faro_m_3')
  bool? get faroM3;

  @BuiltValueField(wireName: 'faro_m_4')
  bool? get faroM4;

  @BuiltValueField(wireName: 'faro_m_5')
  bool? get faroM5;

  @BuiltValueField(wireName: 'faro_m_6')
  bool? get faroM6;

  @BuiltValueField(wireName: 'faro_m_7')
  bool? get faroM7;

  @BuiltValueField(wireName: 'faro_m_8')
  bool? get faroM8;

  @BuiltValueField(wireName: 'faro_m_9')
  bool? get faroM9;

  @BuiltValueField(wireName: 'faro_m_10')
  bool? get faroM10;

  @BuiltValueField(wireName: 'ba_m_1')
  bool? get baM1;

  @BuiltValueField(wireName: 'ba_m_2')
  bool? get baM2;

  @BuiltValueField(wireName: 'ba_m_3')
  bool? get baM3;

  @BuiltValueField(wireName: 'ba_m_4')
  bool? get baM4;

  @BuiltValueField(wireName: 'ba_m_5')
  bool? get baM5;

  @BuiltValueField(wireName: 'ba_m_6')
  bool? get baM6;

  @BuiltValueField(wireName: 'be_m_1')
  bool? get beM1;

  @BuiltValueField(wireName: 'be_m_2')
  bool? get beM2;

  @BuiltValueField(wireName: 'be_m_3')
  bool? get beM3;

  @BuiltValueField(wireName: 'be_m_4')
  bool? get beM4;

  @BuiltValueField(wireName: 'be_m_5')
  bool? get beM5;

  @BuiltValueField(wireName: 'be_m_6')
  bool? get beM6;

  @BuiltValueField(wireName: 'be_m_7')
  bool? get beM7;

  @BuiltValueField(wireName: 'ki_up_1')
  bool? get kiUp1;

  @BuiltValueField(wireName: 'ki_up_2')
  bool? get kiUp2;

  @BuiltValueField(wireName: 'ki_up_3')
  bool? get kiUp3;

  @BuiltValueField(wireName: 'ki_up_4')
  bool? get kiUp4;

  @BuiltValueField(wireName: 'ki_up_5')
  bool? get kiUp5;

  @BuiltValueField(wireName: 'customer_uid')
  String? get customerUid;

  @BuiltValueField(wireName: 'cleaner_uid')
  String? get cleanerUid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(KeepingPlusIsDoneFormRecordBuilder builder) =>
      builder
        ..kiD1 = false
        ..kiD2 = false
        ..kiD3 = false
        ..kiD4 = false
        ..kiD5 = false
        ..kiD6 = false
        ..kiD7 = false
        ..kiD8 = false
        ..diroD1 = false
        ..diroD2 = false
        ..diroD3 = false
        ..ofstuD1 = false
        ..ofstuD2 = false
        ..ofstuD3 = false
        ..faroD1 = false
        ..faroD2 = false
        ..faroD3 = false
        ..baD1 = false
        ..baD2 = false
        ..baD3 = false
        ..baD4 = false
        ..baD5 = false
        ..baD6 = false
        ..beD1 = false
        ..beD2 = false
        ..beD3 = false
        ..beD4 = false
        ..kiW1 = false
        ..kiW2 = false
        ..kiW3 = false
        ..kiW4 = false
        ..kiW5 = false
        ..diroW1 = false
        ..diroW2 = false
        ..diroW3 = false
        ..diroW4 = false
        ..diroW5 = false
        ..diroW6 = false
        ..diroW7 = false
        ..ofstuW1 = false
        ..ofstuW2 = false
        ..ofstuW3 = false
        ..ofstuW4 = false
        ..ofstuW5 = false
        ..ofstuW6 = false
        ..faroW1 = false
        ..faroW2 = false
        ..faroW3 = false
        ..faroW4 = false
        ..faroW5 = false
        ..faroW6 = false
        ..baW1 = false
        ..baW2 = false
        ..baW3 = false
        ..baW4 = false
        ..baW5 = false
        ..baW6 = false
        ..baW7 = false
        ..beW1 = false
        ..beW2 = false
        ..beW3 = false
        ..beW4 = false
        ..beW5 = false
        ..beW6 = false
        ..beW7 = false
        ..kiM1 = false
        ..kiM2 = false
        ..kiM3 = false
        ..kiM4 = false
        ..kiM5 = false
        ..kiM6 = false
        ..kiM7 = false
        ..kiM8 = false
        ..kiM9 = false
        ..kiM10 = false
        ..diroM1 = false
        ..diroM2 = false
        ..diroM3 = false
        ..diroM4 = false
        ..diroM5 = false
        ..diroM6 = false
        ..diroM7 = false
        ..diroM8 = false
        ..ofstuM1 = false
        ..ofstuM2 = false
        ..ofstuM3 = false
        ..ofstuM4 = false
        ..ofstuM5 = false
        ..ofstuM6 = false
        ..ofstuM7 = false
        ..ofstuM8 = false
        ..faroM1 = false
        ..faroM2 = false
        ..faroM3 = false
        ..faroM4 = false
        ..faroM5 = false
        ..faroM6 = false
        ..faroM7 = false
        ..faroM8 = false
        ..faroM9 = false
        ..faroM10 = false
        ..baM1 = false
        ..baM2 = false
        ..baM3 = false
        ..baM4 = false
        ..baM5 = false
        ..baM6 = false
        ..beM1 = false
        ..beM2 = false
        ..beM3 = false
        ..beM4 = false
        ..beM5 = false
        ..beM6 = false
        ..beM7 = false
        ..kiUp1 = false
        ..kiUp2 = false
        ..kiUp3 = false
        ..kiUp4 = false
        ..kiUp5 = false
        ..customerUid = ''
        ..cleanerUid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('keeping_plus_isDone_form');

  static Stream<KeepingPlusIsDoneFormRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<KeepingPlusIsDoneFormRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  KeepingPlusIsDoneFormRecord._();
  factory KeepingPlusIsDoneFormRecord(
          [void Function(KeepingPlusIsDoneFormRecordBuilder) updates]) =
      _$KeepingPlusIsDoneFormRecord;

  static KeepingPlusIsDoneFormRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createKeepingPlusIsDoneFormRecordData({
  bool? kiD1,
  bool? kiD2,
  bool? kiD3,
  bool? kiD4,
  bool? kiD5,
  bool? kiD6,
  bool? kiD7,
  bool? kiD8,
  bool? diroD1,
  bool? diroD2,
  bool? diroD3,
  bool? ofstuD1,
  bool? ofstuD2,
  bool? ofstuD3,
  bool? faroD1,
  bool? faroD2,
  bool? faroD3,
  bool? baD1,
  bool? baD2,
  bool? baD3,
  bool? baD4,
  bool? baD5,
  bool? baD6,
  bool? beD1,
  bool? beD2,
  bool? beD3,
  bool? beD4,
  bool? kiW1,
  bool? kiW2,
  bool? kiW3,
  bool? kiW4,
  bool? kiW5,
  bool? diroW1,
  bool? diroW2,
  bool? diroW3,
  bool? diroW4,
  bool? diroW5,
  bool? diroW6,
  bool? diroW7,
  bool? ofstuW1,
  bool? ofstuW2,
  bool? ofstuW3,
  bool? ofstuW4,
  bool? ofstuW5,
  bool? ofstuW6,
  bool? faroW1,
  bool? faroW2,
  bool? faroW3,
  bool? faroW4,
  bool? faroW5,
  bool? faroW6,
  bool? baW1,
  bool? baW2,
  bool? baW3,
  bool? baW4,
  bool? baW5,
  bool? baW6,
  bool? baW7,
  bool? beW1,
  bool? beW2,
  bool? beW3,
  bool? beW4,
  bool? beW5,
  bool? beW6,
  bool? beW7,
  bool? kiM1,
  bool? kiM2,
  bool? kiM3,
  bool? kiM4,
  bool? kiM5,
  bool? kiM6,
  bool? kiM7,
  bool? kiM8,
  bool? kiM9,
  bool? kiM10,
  bool? diroM1,
  bool? diroM2,
  bool? diroM3,
  bool? diroM4,
  bool? diroM5,
  bool? diroM6,
  bool? diroM7,
  bool? diroM8,
  bool? ofstuM1,
  bool? ofstuM2,
  bool? ofstuM3,
  bool? ofstuM4,
  bool? ofstuM5,
  bool? ofstuM6,
  bool? ofstuM7,
  bool? ofstuM8,
  bool? faroM1,
  bool? faroM2,
  bool? faroM3,
  bool? faroM4,
  bool? faroM5,
  bool? faroM6,
  bool? faroM7,
  bool? faroM8,
  bool? faroM9,
  bool? faroM10,
  bool? baM1,
  bool? baM2,
  bool? baM3,
  bool? baM4,
  bool? baM5,
  bool? baM6,
  bool? beM1,
  bool? beM2,
  bool? beM3,
  bool? beM4,
  bool? beM5,
  bool? beM6,
  bool? beM7,
  bool? kiUp1,
  bool? kiUp2,
  bool? kiUp3,
  bool? kiUp4,
  bool? kiUp5,
  String? customerUid,
  String? cleanerUid,
}) {
  final firestoreData = serializers.toFirestore(
    KeepingPlusIsDoneFormRecord.serializer,
    KeepingPlusIsDoneFormRecord(
      (k) => k
        ..kiD1 = kiD1
        ..kiD2 = kiD2
        ..kiD3 = kiD3
        ..kiD4 = kiD4
        ..kiD5 = kiD5
        ..kiD6 = kiD6
        ..kiD7 = kiD7
        ..kiD8 = kiD8
        ..diroD1 = diroD1
        ..diroD2 = diroD2
        ..diroD3 = diroD3
        ..ofstuD1 = ofstuD1
        ..ofstuD2 = ofstuD2
        ..ofstuD3 = ofstuD3
        ..faroD1 = faroD1
        ..faroD2 = faroD2
        ..faroD3 = faroD3
        ..baD1 = baD1
        ..baD2 = baD2
        ..baD3 = baD3
        ..baD4 = baD4
        ..baD5 = baD5
        ..baD6 = baD6
        ..beD1 = beD1
        ..beD2 = beD2
        ..beD3 = beD3
        ..beD4 = beD4
        ..kiW1 = kiW1
        ..kiW2 = kiW2
        ..kiW3 = kiW3
        ..kiW4 = kiW4
        ..kiW5 = kiW5
        ..diroW1 = diroW1
        ..diroW2 = diroW2
        ..diroW3 = diroW3
        ..diroW4 = diroW4
        ..diroW5 = diroW5
        ..diroW6 = diroW6
        ..diroW7 = diroW7
        ..ofstuW1 = ofstuW1
        ..ofstuW2 = ofstuW2
        ..ofstuW3 = ofstuW3
        ..ofstuW4 = ofstuW4
        ..ofstuW5 = ofstuW5
        ..ofstuW6 = ofstuW6
        ..faroW1 = faroW1
        ..faroW2 = faroW2
        ..faroW3 = faroW3
        ..faroW4 = faroW4
        ..faroW5 = faroW5
        ..faroW6 = faroW6
        ..baW1 = baW1
        ..baW2 = baW2
        ..baW3 = baW3
        ..baW4 = baW4
        ..baW5 = baW5
        ..baW6 = baW6
        ..baW7 = baW7
        ..beW1 = beW1
        ..beW2 = beW2
        ..beW3 = beW3
        ..beW4 = beW4
        ..beW5 = beW5
        ..beW6 = beW6
        ..beW7 = beW7
        ..kiM1 = kiM1
        ..kiM2 = kiM2
        ..kiM3 = kiM3
        ..kiM4 = kiM4
        ..kiM5 = kiM5
        ..kiM6 = kiM6
        ..kiM7 = kiM7
        ..kiM8 = kiM8
        ..kiM9 = kiM9
        ..kiM10 = kiM10
        ..diroM1 = diroM1
        ..diroM2 = diroM2
        ..diroM3 = diroM3
        ..diroM4 = diroM4
        ..diroM5 = diroM5
        ..diroM6 = diroM6
        ..diroM7 = diroM7
        ..diroM8 = diroM8
        ..ofstuM1 = ofstuM1
        ..ofstuM2 = ofstuM2
        ..ofstuM3 = ofstuM3
        ..ofstuM4 = ofstuM4
        ..ofstuM5 = ofstuM5
        ..ofstuM6 = ofstuM6
        ..ofstuM7 = ofstuM7
        ..ofstuM8 = ofstuM8
        ..faroM1 = faroM1
        ..faroM2 = faroM2
        ..faroM3 = faroM3
        ..faroM4 = faroM4
        ..faroM5 = faroM5
        ..faroM6 = faroM6
        ..faroM7 = faroM7
        ..faroM8 = faroM8
        ..faroM9 = faroM9
        ..faroM10 = faroM10
        ..baM1 = baM1
        ..baM2 = baM2
        ..baM3 = baM3
        ..baM4 = baM4
        ..baM5 = baM5
        ..baM6 = baM6
        ..beM1 = beM1
        ..beM2 = beM2
        ..beM3 = beM3
        ..beM4 = beM4
        ..beM5 = beM5
        ..beM6 = beM6
        ..beM7 = beM7
        ..kiUp1 = kiUp1
        ..kiUp2 = kiUp2
        ..kiUp3 = kiUp3
        ..kiUp4 = kiUp4
        ..kiUp5 = kiUp5
        ..customerUid = customerUid
        ..cleanerUid = cleanerUid,
    ),
  );

  return firestoreData;
}
