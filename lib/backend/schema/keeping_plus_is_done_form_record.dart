import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KeepingPlusIsDoneFormRecord extends FirestoreRecord {
  KeepingPlusIsDoneFormRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ki_d_1" field.
  bool? _kiD1;
  bool get kiD1 => _kiD1 ?? false;
  bool hasKiD1() => _kiD1 != null;

  // "ki_d_2" field.
  bool? _kiD2;
  bool get kiD2 => _kiD2 ?? false;
  bool hasKiD2() => _kiD2 != null;

  // "ki_d_3" field.
  bool? _kiD3;
  bool get kiD3 => _kiD3 ?? false;
  bool hasKiD3() => _kiD3 != null;

  // "ki_d_4" field.
  bool? _kiD4;
  bool get kiD4 => _kiD4 ?? false;
  bool hasKiD4() => _kiD4 != null;

  // "ki_d_5" field.
  bool? _kiD5;
  bool get kiD5 => _kiD5 ?? false;
  bool hasKiD5() => _kiD5 != null;

  // "ki_d_6" field.
  bool? _kiD6;
  bool get kiD6 => _kiD6 ?? false;
  bool hasKiD6() => _kiD6 != null;

  // "ki_d_7" field.
  bool? _kiD7;
  bool get kiD7 => _kiD7 ?? false;
  bool hasKiD7() => _kiD7 != null;

  // "ki_d_8" field.
  bool? _kiD8;
  bool get kiD8 => _kiD8 ?? false;
  bool hasKiD8() => _kiD8 != null;

  // "diro_d_1" field.
  bool? _diroD1;
  bool get diroD1 => _diroD1 ?? false;
  bool hasDiroD1() => _diroD1 != null;

  // "diro_d_2" field.
  bool? _diroD2;
  bool get diroD2 => _diroD2 ?? false;
  bool hasDiroD2() => _diroD2 != null;

  // "diro_d_3" field.
  bool? _diroD3;
  bool get diroD3 => _diroD3 ?? false;
  bool hasDiroD3() => _diroD3 != null;

  // "ofstu_d_1" field.
  bool? _ofstuD1;
  bool get ofstuD1 => _ofstuD1 ?? false;
  bool hasOfstuD1() => _ofstuD1 != null;

  // "ofstu_d_2" field.
  bool? _ofstuD2;
  bool get ofstuD2 => _ofstuD2 ?? false;
  bool hasOfstuD2() => _ofstuD2 != null;

  // "ofstu_d_3" field.
  bool? _ofstuD3;
  bool get ofstuD3 => _ofstuD3 ?? false;
  bool hasOfstuD3() => _ofstuD3 != null;

  // "faro_d_1" field.
  bool? _faroD1;
  bool get faroD1 => _faroD1 ?? false;
  bool hasFaroD1() => _faroD1 != null;

  // "faro_d_2" field.
  bool? _faroD2;
  bool get faroD2 => _faroD2 ?? false;
  bool hasFaroD2() => _faroD2 != null;

  // "faro_d_3" field.
  bool? _faroD3;
  bool get faroD3 => _faroD3 ?? false;
  bool hasFaroD3() => _faroD3 != null;

  // "ba_d_1" field.
  bool? _baD1;
  bool get baD1 => _baD1 ?? false;
  bool hasBaD1() => _baD1 != null;

  // "ba_d_2" field.
  bool? _baD2;
  bool get baD2 => _baD2 ?? false;
  bool hasBaD2() => _baD2 != null;

  // "ba_d_3" field.
  bool? _baD3;
  bool get baD3 => _baD3 ?? false;
  bool hasBaD3() => _baD3 != null;

  // "ba_d_4" field.
  bool? _baD4;
  bool get baD4 => _baD4 ?? false;
  bool hasBaD4() => _baD4 != null;

  // "ba_d_5" field.
  bool? _baD5;
  bool get baD5 => _baD5 ?? false;
  bool hasBaD5() => _baD5 != null;

  // "ba_d_6" field.
  bool? _baD6;
  bool get baD6 => _baD6 ?? false;
  bool hasBaD6() => _baD6 != null;

  // "be_d_1" field.
  bool? _beD1;
  bool get beD1 => _beD1 ?? false;
  bool hasBeD1() => _beD1 != null;

  // "be_d_2" field.
  bool? _beD2;
  bool get beD2 => _beD2 ?? false;
  bool hasBeD2() => _beD2 != null;

  // "be_d_3" field.
  bool? _beD3;
  bool get beD3 => _beD3 ?? false;
  bool hasBeD3() => _beD3 != null;

  // "be_d_4" field.
  bool? _beD4;
  bool get beD4 => _beD4 ?? false;
  bool hasBeD4() => _beD4 != null;

  // "ki_w_1" field.
  bool? _kiW1;
  bool get kiW1 => _kiW1 ?? false;
  bool hasKiW1() => _kiW1 != null;

  // "ki_w_2" field.
  bool? _kiW2;
  bool get kiW2 => _kiW2 ?? false;
  bool hasKiW2() => _kiW2 != null;

  // "ki_w_3" field.
  bool? _kiW3;
  bool get kiW3 => _kiW3 ?? false;
  bool hasKiW3() => _kiW3 != null;

  // "ki_w_4" field.
  bool? _kiW4;
  bool get kiW4 => _kiW4 ?? false;
  bool hasKiW4() => _kiW4 != null;

  // "ki_w_5" field.
  bool? _kiW5;
  bool get kiW5 => _kiW5 ?? false;
  bool hasKiW5() => _kiW5 != null;

  // "diro_w_1" field.
  bool? _diroW1;
  bool get diroW1 => _diroW1 ?? false;
  bool hasDiroW1() => _diroW1 != null;

  // "diro_w_2" field.
  bool? _diroW2;
  bool get diroW2 => _diroW2 ?? false;
  bool hasDiroW2() => _diroW2 != null;

  // "diro_w_3" field.
  bool? _diroW3;
  bool get diroW3 => _diroW3 ?? false;
  bool hasDiroW3() => _diroW3 != null;

  // "diro_w_4" field.
  bool? _diroW4;
  bool get diroW4 => _diroW4 ?? false;
  bool hasDiroW4() => _diroW4 != null;

  // "diro_w_5" field.
  bool? _diroW5;
  bool get diroW5 => _diroW5 ?? false;
  bool hasDiroW5() => _diroW5 != null;

  // "diro_w_6" field.
  bool? _diroW6;
  bool get diroW6 => _diroW6 ?? false;
  bool hasDiroW6() => _diroW6 != null;

  // "diro_w_7" field.
  bool? _diroW7;
  bool get diroW7 => _diroW7 ?? false;
  bool hasDiroW7() => _diroW7 != null;

  // "ofstu_w_1" field.
  bool? _ofstuW1;
  bool get ofstuW1 => _ofstuW1 ?? false;
  bool hasOfstuW1() => _ofstuW1 != null;

  // "ofstu_w_2" field.
  bool? _ofstuW2;
  bool get ofstuW2 => _ofstuW2 ?? false;
  bool hasOfstuW2() => _ofstuW2 != null;

  // "ofstu_w_3" field.
  bool? _ofstuW3;
  bool get ofstuW3 => _ofstuW3 ?? false;
  bool hasOfstuW3() => _ofstuW3 != null;

  // "ofstu_w_4" field.
  bool? _ofstuW4;
  bool get ofstuW4 => _ofstuW4 ?? false;
  bool hasOfstuW4() => _ofstuW4 != null;

  // "ofstu_w_5" field.
  bool? _ofstuW5;
  bool get ofstuW5 => _ofstuW5 ?? false;
  bool hasOfstuW5() => _ofstuW5 != null;

  // "ofstu_w_6" field.
  bool? _ofstuW6;
  bool get ofstuW6 => _ofstuW6 ?? false;
  bool hasOfstuW6() => _ofstuW6 != null;

  // "faro_w_1" field.
  bool? _faroW1;
  bool get faroW1 => _faroW1 ?? false;
  bool hasFaroW1() => _faroW1 != null;

  // "faro_w_2" field.
  bool? _faroW2;
  bool get faroW2 => _faroW2 ?? false;
  bool hasFaroW2() => _faroW2 != null;

  // "faro_w_3" field.
  bool? _faroW3;
  bool get faroW3 => _faroW3 ?? false;
  bool hasFaroW3() => _faroW3 != null;

  // "faro_w_4" field.
  bool? _faroW4;
  bool get faroW4 => _faroW4 ?? false;
  bool hasFaroW4() => _faroW4 != null;

  // "faro_w_5" field.
  bool? _faroW5;
  bool get faroW5 => _faroW5 ?? false;
  bool hasFaroW5() => _faroW5 != null;

  // "faro_w_6" field.
  bool? _faroW6;
  bool get faroW6 => _faroW6 ?? false;
  bool hasFaroW6() => _faroW6 != null;

  // "ba_w_1" field.
  bool? _baW1;
  bool get baW1 => _baW1 ?? false;
  bool hasBaW1() => _baW1 != null;

  // "ba_w_2" field.
  bool? _baW2;
  bool get baW2 => _baW2 ?? false;
  bool hasBaW2() => _baW2 != null;

  // "ba_w_3" field.
  bool? _baW3;
  bool get baW3 => _baW3 ?? false;
  bool hasBaW3() => _baW3 != null;

  // "ba_w_4" field.
  bool? _baW4;
  bool get baW4 => _baW4 ?? false;
  bool hasBaW4() => _baW4 != null;

  // "ba_w_5" field.
  bool? _baW5;
  bool get baW5 => _baW5 ?? false;
  bool hasBaW5() => _baW5 != null;

  // "ba_w_6" field.
  bool? _baW6;
  bool get baW6 => _baW6 ?? false;
  bool hasBaW6() => _baW6 != null;

  // "ba_w_7" field.
  bool? _baW7;
  bool get baW7 => _baW7 ?? false;
  bool hasBaW7() => _baW7 != null;

  // "be_w_1" field.
  bool? _beW1;
  bool get beW1 => _beW1 ?? false;
  bool hasBeW1() => _beW1 != null;

  // "be_w_2" field.
  bool? _beW2;
  bool get beW2 => _beW2 ?? false;
  bool hasBeW2() => _beW2 != null;

  // "be_w_3" field.
  bool? _beW3;
  bool get beW3 => _beW3 ?? false;
  bool hasBeW3() => _beW3 != null;

  // "be_w_4" field.
  bool? _beW4;
  bool get beW4 => _beW4 ?? false;
  bool hasBeW4() => _beW4 != null;

  // "be_w_5" field.
  bool? _beW5;
  bool get beW5 => _beW5 ?? false;
  bool hasBeW5() => _beW5 != null;

  // "be_w_6" field.
  bool? _beW6;
  bool get beW6 => _beW6 ?? false;
  bool hasBeW6() => _beW6 != null;

  // "be_w_7" field.
  bool? _beW7;
  bool get beW7 => _beW7 ?? false;
  bool hasBeW7() => _beW7 != null;

  // "ki_m_1" field.
  bool? _kiM1;
  bool get kiM1 => _kiM1 ?? false;
  bool hasKiM1() => _kiM1 != null;

  // "ki_m_2" field.
  bool? _kiM2;
  bool get kiM2 => _kiM2 ?? false;
  bool hasKiM2() => _kiM2 != null;

  // "ki_m_3" field.
  bool? _kiM3;
  bool get kiM3 => _kiM3 ?? false;
  bool hasKiM3() => _kiM3 != null;

  // "ki_m_4" field.
  bool? _kiM4;
  bool get kiM4 => _kiM4 ?? false;
  bool hasKiM4() => _kiM4 != null;

  // "ki_m_5" field.
  bool? _kiM5;
  bool get kiM5 => _kiM5 ?? false;
  bool hasKiM5() => _kiM5 != null;

  // "ki_m_6" field.
  bool? _kiM6;
  bool get kiM6 => _kiM6 ?? false;
  bool hasKiM6() => _kiM6 != null;

  // "ki_m_7" field.
  bool? _kiM7;
  bool get kiM7 => _kiM7 ?? false;
  bool hasKiM7() => _kiM7 != null;

  // "ki_m_8" field.
  bool? _kiM8;
  bool get kiM8 => _kiM8 ?? false;
  bool hasKiM8() => _kiM8 != null;

  // "ki_m_9" field.
  bool? _kiM9;
  bool get kiM9 => _kiM9 ?? false;
  bool hasKiM9() => _kiM9 != null;

  // "ki_m_10" field.
  bool? _kiM10;
  bool get kiM10 => _kiM10 ?? false;
  bool hasKiM10() => _kiM10 != null;

  // "diro_m_1" field.
  bool? _diroM1;
  bool get diroM1 => _diroM1 ?? false;
  bool hasDiroM1() => _diroM1 != null;

  // "diro_m_2" field.
  bool? _diroM2;
  bool get diroM2 => _diroM2 ?? false;
  bool hasDiroM2() => _diroM2 != null;

  // "diro_m_3" field.
  bool? _diroM3;
  bool get diroM3 => _diroM3 ?? false;
  bool hasDiroM3() => _diroM3 != null;

  // "diro_m_4" field.
  bool? _diroM4;
  bool get diroM4 => _diroM4 ?? false;
  bool hasDiroM4() => _diroM4 != null;

  // "diro_m_5" field.
  bool? _diroM5;
  bool get diroM5 => _diroM5 ?? false;
  bool hasDiroM5() => _diroM5 != null;

  // "diro_m_6" field.
  bool? _diroM6;
  bool get diroM6 => _diroM6 ?? false;
  bool hasDiroM6() => _diroM6 != null;

  // "diro_m_7" field.
  bool? _diroM7;
  bool get diroM7 => _diroM7 ?? false;
  bool hasDiroM7() => _diroM7 != null;

  // "diro_m_8" field.
  bool? _diroM8;
  bool get diroM8 => _diroM8 ?? false;
  bool hasDiroM8() => _diroM8 != null;

  // "ofstu_m_1" field.
  bool? _ofstuM1;
  bool get ofstuM1 => _ofstuM1 ?? false;
  bool hasOfstuM1() => _ofstuM1 != null;

  // "ofstu_m_2" field.
  bool? _ofstuM2;
  bool get ofstuM2 => _ofstuM2 ?? false;
  bool hasOfstuM2() => _ofstuM2 != null;

  // "ofstu_m_3" field.
  bool? _ofstuM3;
  bool get ofstuM3 => _ofstuM3 ?? false;
  bool hasOfstuM3() => _ofstuM3 != null;

  // "ofstu_m_4" field.
  bool? _ofstuM4;
  bool get ofstuM4 => _ofstuM4 ?? false;
  bool hasOfstuM4() => _ofstuM4 != null;

  // "ofstu_m_5" field.
  bool? _ofstuM5;
  bool get ofstuM5 => _ofstuM5 ?? false;
  bool hasOfstuM5() => _ofstuM5 != null;

  // "ofstu_m_6" field.
  bool? _ofstuM6;
  bool get ofstuM6 => _ofstuM6 ?? false;
  bool hasOfstuM6() => _ofstuM6 != null;

  // "ofstu_m_7" field.
  bool? _ofstuM7;
  bool get ofstuM7 => _ofstuM7 ?? false;
  bool hasOfstuM7() => _ofstuM7 != null;

  // "ofstu_m_8" field.
  bool? _ofstuM8;
  bool get ofstuM8 => _ofstuM8 ?? false;
  bool hasOfstuM8() => _ofstuM8 != null;

  // "faro_m_1" field.
  bool? _faroM1;
  bool get faroM1 => _faroM1 ?? false;
  bool hasFaroM1() => _faroM1 != null;

  // "faro_m_2" field.
  bool? _faroM2;
  bool get faroM2 => _faroM2 ?? false;
  bool hasFaroM2() => _faroM2 != null;

  // "faro_m_3" field.
  bool? _faroM3;
  bool get faroM3 => _faroM3 ?? false;
  bool hasFaroM3() => _faroM3 != null;

  // "faro_m_4" field.
  bool? _faroM4;
  bool get faroM4 => _faroM4 ?? false;
  bool hasFaroM4() => _faroM4 != null;

  // "faro_m_5" field.
  bool? _faroM5;
  bool get faroM5 => _faroM5 ?? false;
  bool hasFaroM5() => _faroM5 != null;

  // "faro_m_6" field.
  bool? _faroM6;
  bool get faroM6 => _faroM6 ?? false;
  bool hasFaroM6() => _faroM6 != null;

  // "faro_m_7" field.
  bool? _faroM7;
  bool get faroM7 => _faroM7 ?? false;
  bool hasFaroM7() => _faroM7 != null;

  // "faro_m_8" field.
  bool? _faroM8;
  bool get faroM8 => _faroM8 ?? false;
  bool hasFaroM8() => _faroM8 != null;

  // "faro_m_9" field.
  bool? _faroM9;
  bool get faroM9 => _faroM9 ?? false;
  bool hasFaroM9() => _faroM9 != null;

  // "faro_m_10" field.
  bool? _faroM10;
  bool get faroM10 => _faroM10 ?? false;
  bool hasFaroM10() => _faroM10 != null;

  // "ba_m_1" field.
  bool? _baM1;
  bool get baM1 => _baM1 ?? false;
  bool hasBaM1() => _baM1 != null;

  // "ba_m_2" field.
  bool? _baM2;
  bool get baM2 => _baM2 ?? false;
  bool hasBaM2() => _baM2 != null;

  // "ba_m_3" field.
  bool? _baM3;
  bool get baM3 => _baM3 ?? false;
  bool hasBaM3() => _baM3 != null;

  // "ba_m_4" field.
  bool? _baM4;
  bool get baM4 => _baM4 ?? false;
  bool hasBaM4() => _baM4 != null;

  // "ba_m_5" field.
  bool? _baM5;
  bool get baM5 => _baM5 ?? false;
  bool hasBaM5() => _baM5 != null;

  // "ba_m_6" field.
  bool? _baM6;
  bool get baM6 => _baM6 ?? false;
  bool hasBaM6() => _baM6 != null;

  // "be_m_1" field.
  bool? _beM1;
  bool get beM1 => _beM1 ?? false;
  bool hasBeM1() => _beM1 != null;

  // "be_m_2" field.
  bool? _beM2;
  bool get beM2 => _beM2 ?? false;
  bool hasBeM2() => _beM2 != null;

  // "be_m_3" field.
  bool? _beM3;
  bool get beM3 => _beM3 ?? false;
  bool hasBeM3() => _beM3 != null;

  // "be_m_4" field.
  bool? _beM4;
  bool get beM4 => _beM4 ?? false;
  bool hasBeM4() => _beM4 != null;

  // "be_m_5" field.
  bool? _beM5;
  bool get beM5 => _beM5 ?? false;
  bool hasBeM5() => _beM5 != null;

  // "be_m_6" field.
  bool? _beM6;
  bool get beM6 => _beM6 ?? false;
  bool hasBeM6() => _beM6 != null;

  // "be_m_7" field.
  bool? _beM7;
  bool get beM7 => _beM7 ?? false;
  bool hasBeM7() => _beM7 != null;

  // "ki_up_1" field.
  bool? _kiUp1;
  bool get kiUp1 => _kiUp1 ?? false;
  bool hasKiUp1() => _kiUp1 != null;

  // "ki_up_2" field.
  bool? _kiUp2;
  bool get kiUp2 => _kiUp2 ?? false;
  bool hasKiUp2() => _kiUp2 != null;

  // "ki_up_3" field.
  bool? _kiUp3;
  bool get kiUp3 => _kiUp3 ?? false;
  bool hasKiUp3() => _kiUp3 != null;

  // "ki_up_4" field.
  bool? _kiUp4;
  bool get kiUp4 => _kiUp4 ?? false;
  bool hasKiUp4() => _kiUp4 != null;

  // "ki_up_5" field.
  bool? _kiUp5;
  bool get kiUp5 => _kiUp5 ?? false;
  bool hasKiUp5() => _kiUp5 != null;

  // "customer_uid" field.
  String? _customerUid;
  String get customerUid => _customerUid ?? '';
  bool hasCustomerUid() => _customerUid != null;

  // "cleaner_uid" field.
  String? _cleanerUid;
  String get cleanerUid => _cleanerUid ?? '';
  bool hasCleanerUid() => _cleanerUid != null;

  void _initializeFields() {
    _kiD1 = snapshotData['ki_d_1'] as bool?;
    _kiD2 = snapshotData['ki_d_2'] as bool?;
    _kiD3 = snapshotData['ki_d_3'] as bool?;
    _kiD4 = snapshotData['ki_d_4'] as bool?;
    _kiD5 = snapshotData['ki_d_5'] as bool?;
    _kiD6 = snapshotData['ki_d_6'] as bool?;
    _kiD7 = snapshotData['ki_d_7'] as bool?;
    _kiD8 = snapshotData['ki_d_8'] as bool?;
    _diroD1 = snapshotData['diro_d_1'] as bool?;
    _diroD2 = snapshotData['diro_d_2'] as bool?;
    _diroD3 = snapshotData['diro_d_3'] as bool?;
    _ofstuD1 = snapshotData['ofstu_d_1'] as bool?;
    _ofstuD2 = snapshotData['ofstu_d_2'] as bool?;
    _ofstuD3 = snapshotData['ofstu_d_3'] as bool?;
    _faroD1 = snapshotData['faro_d_1'] as bool?;
    _faroD2 = snapshotData['faro_d_2'] as bool?;
    _faroD3 = snapshotData['faro_d_3'] as bool?;
    _baD1 = snapshotData['ba_d_1'] as bool?;
    _baD2 = snapshotData['ba_d_2'] as bool?;
    _baD3 = snapshotData['ba_d_3'] as bool?;
    _baD4 = snapshotData['ba_d_4'] as bool?;
    _baD5 = snapshotData['ba_d_5'] as bool?;
    _baD6 = snapshotData['ba_d_6'] as bool?;
    _beD1 = snapshotData['be_d_1'] as bool?;
    _beD2 = snapshotData['be_d_2'] as bool?;
    _beD3 = snapshotData['be_d_3'] as bool?;
    _beD4 = snapshotData['be_d_4'] as bool?;
    _kiW1 = snapshotData['ki_w_1'] as bool?;
    _kiW2 = snapshotData['ki_w_2'] as bool?;
    _kiW3 = snapshotData['ki_w_3'] as bool?;
    _kiW4 = snapshotData['ki_w_4'] as bool?;
    _kiW5 = snapshotData['ki_w_5'] as bool?;
    _diroW1 = snapshotData['diro_w_1'] as bool?;
    _diroW2 = snapshotData['diro_w_2'] as bool?;
    _diroW3 = snapshotData['diro_w_3'] as bool?;
    _diroW4 = snapshotData['diro_w_4'] as bool?;
    _diroW5 = snapshotData['diro_w_5'] as bool?;
    _diroW6 = snapshotData['diro_w_6'] as bool?;
    _diroW7 = snapshotData['diro_w_7'] as bool?;
    _ofstuW1 = snapshotData['ofstu_w_1'] as bool?;
    _ofstuW2 = snapshotData['ofstu_w_2'] as bool?;
    _ofstuW3 = snapshotData['ofstu_w_3'] as bool?;
    _ofstuW4 = snapshotData['ofstu_w_4'] as bool?;
    _ofstuW5 = snapshotData['ofstu_w_5'] as bool?;
    _ofstuW6 = snapshotData['ofstu_w_6'] as bool?;
    _faroW1 = snapshotData['faro_w_1'] as bool?;
    _faroW2 = snapshotData['faro_w_2'] as bool?;
    _faroW3 = snapshotData['faro_w_3'] as bool?;
    _faroW4 = snapshotData['faro_w_4'] as bool?;
    _faroW5 = snapshotData['faro_w_5'] as bool?;
    _faroW6 = snapshotData['faro_w_6'] as bool?;
    _baW1 = snapshotData['ba_w_1'] as bool?;
    _baW2 = snapshotData['ba_w_2'] as bool?;
    _baW3 = snapshotData['ba_w_3'] as bool?;
    _baW4 = snapshotData['ba_w_4'] as bool?;
    _baW5 = snapshotData['ba_w_5'] as bool?;
    _baW6 = snapshotData['ba_w_6'] as bool?;
    _baW7 = snapshotData['ba_w_7'] as bool?;
    _beW1 = snapshotData['be_w_1'] as bool?;
    _beW2 = snapshotData['be_w_2'] as bool?;
    _beW3 = snapshotData['be_w_3'] as bool?;
    _beW4 = snapshotData['be_w_4'] as bool?;
    _beW5 = snapshotData['be_w_5'] as bool?;
    _beW6 = snapshotData['be_w_6'] as bool?;
    _beW7 = snapshotData['be_w_7'] as bool?;
    _kiM1 = snapshotData['ki_m_1'] as bool?;
    _kiM2 = snapshotData['ki_m_2'] as bool?;
    _kiM3 = snapshotData['ki_m_3'] as bool?;
    _kiM4 = snapshotData['ki_m_4'] as bool?;
    _kiM5 = snapshotData['ki_m_5'] as bool?;
    _kiM6 = snapshotData['ki_m_6'] as bool?;
    _kiM7 = snapshotData['ki_m_7'] as bool?;
    _kiM8 = snapshotData['ki_m_8'] as bool?;
    _kiM9 = snapshotData['ki_m_9'] as bool?;
    _kiM10 = snapshotData['ki_m_10'] as bool?;
    _diroM1 = snapshotData['diro_m_1'] as bool?;
    _diroM2 = snapshotData['diro_m_2'] as bool?;
    _diroM3 = snapshotData['diro_m_3'] as bool?;
    _diroM4 = snapshotData['diro_m_4'] as bool?;
    _diroM5 = snapshotData['diro_m_5'] as bool?;
    _diroM6 = snapshotData['diro_m_6'] as bool?;
    _diroM7 = snapshotData['diro_m_7'] as bool?;
    _diroM8 = snapshotData['diro_m_8'] as bool?;
    _ofstuM1 = snapshotData['ofstu_m_1'] as bool?;
    _ofstuM2 = snapshotData['ofstu_m_2'] as bool?;
    _ofstuM3 = snapshotData['ofstu_m_3'] as bool?;
    _ofstuM4 = snapshotData['ofstu_m_4'] as bool?;
    _ofstuM5 = snapshotData['ofstu_m_5'] as bool?;
    _ofstuM6 = snapshotData['ofstu_m_6'] as bool?;
    _ofstuM7 = snapshotData['ofstu_m_7'] as bool?;
    _ofstuM8 = snapshotData['ofstu_m_8'] as bool?;
    _faroM1 = snapshotData['faro_m_1'] as bool?;
    _faroM2 = snapshotData['faro_m_2'] as bool?;
    _faroM3 = snapshotData['faro_m_3'] as bool?;
    _faroM4 = snapshotData['faro_m_4'] as bool?;
    _faroM5 = snapshotData['faro_m_5'] as bool?;
    _faroM6 = snapshotData['faro_m_6'] as bool?;
    _faroM7 = snapshotData['faro_m_7'] as bool?;
    _faroM8 = snapshotData['faro_m_8'] as bool?;
    _faroM9 = snapshotData['faro_m_9'] as bool?;
    _faroM10 = snapshotData['faro_m_10'] as bool?;
    _baM1 = snapshotData['ba_m_1'] as bool?;
    _baM2 = snapshotData['ba_m_2'] as bool?;
    _baM3 = snapshotData['ba_m_3'] as bool?;
    _baM4 = snapshotData['ba_m_4'] as bool?;
    _baM5 = snapshotData['ba_m_5'] as bool?;
    _baM6 = snapshotData['ba_m_6'] as bool?;
    _beM1 = snapshotData['be_m_1'] as bool?;
    _beM2 = snapshotData['be_m_2'] as bool?;
    _beM3 = snapshotData['be_m_3'] as bool?;
    _beM4 = snapshotData['be_m_4'] as bool?;
    _beM5 = snapshotData['be_m_5'] as bool?;
    _beM6 = snapshotData['be_m_6'] as bool?;
    _beM7 = snapshotData['be_m_7'] as bool?;
    _kiUp1 = snapshotData['ki_up_1'] as bool?;
    _kiUp2 = snapshotData['ki_up_2'] as bool?;
    _kiUp3 = snapshotData['ki_up_3'] as bool?;
    _kiUp4 = snapshotData['ki_up_4'] as bool?;
    _kiUp5 = snapshotData['ki_up_5'] as bool?;
    _customerUid = snapshotData['customer_uid'] as String?;
    _cleanerUid = snapshotData['cleaner_uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('keeping_plus_isDone_form');

  static Stream<KeepingPlusIsDoneFormRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => KeepingPlusIsDoneFormRecord.fromSnapshot(s));

  static Future<KeepingPlusIsDoneFormRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => KeepingPlusIsDoneFormRecord.fromSnapshot(s));

  static KeepingPlusIsDoneFormRecord fromSnapshot(DocumentSnapshot snapshot) =>
      KeepingPlusIsDoneFormRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KeepingPlusIsDoneFormRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KeepingPlusIsDoneFormRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KeepingPlusIsDoneFormRecord(reference: ${reference.path}, data: $snapshotData)';
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
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ki_d_1': kiD1,
      'ki_d_2': kiD2,
      'ki_d_3': kiD3,
      'ki_d_4': kiD4,
      'ki_d_5': kiD5,
      'ki_d_6': kiD6,
      'ki_d_7': kiD7,
      'ki_d_8': kiD8,
      'diro_d_1': diroD1,
      'diro_d_2': diroD2,
      'diro_d_3': diroD3,
      'ofstu_d_1': ofstuD1,
      'ofstu_d_2': ofstuD2,
      'ofstu_d_3': ofstuD3,
      'faro_d_1': faroD1,
      'faro_d_2': faroD2,
      'faro_d_3': faroD3,
      'ba_d_1': baD1,
      'ba_d_2': baD2,
      'ba_d_3': baD3,
      'ba_d_4': baD4,
      'ba_d_5': baD5,
      'ba_d_6': baD6,
      'be_d_1': beD1,
      'be_d_2': beD2,
      'be_d_3': beD3,
      'be_d_4': beD4,
      'ki_w_1': kiW1,
      'ki_w_2': kiW2,
      'ki_w_3': kiW3,
      'ki_w_4': kiW4,
      'ki_w_5': kiW5,
      'diro_w_1': diroW1,
      'diro_w_2': diroW2,
      'diro_w_3': diroW3,
      'diro_w_4': diroW4,
      'diro_w_5': diroW5,
      'diro_w_6': diroW6,
      'diro_w_7': diroW7,
      'ofstu_w_1': ofstuW1,
      'ofstu_w_2': ofstuW2,
      'ofstu_w_3': ofstuW3,
      'ofstu_w_4': ofstuW4,
      'ofstu_w_5': ofstuW5,
      'ofstu_w_6': ofstuW6,
      'faro_w_1': faroW1,
      'faro_w_2': faroW2,
      'faro_w_3': faroW3,
      'faro_w_4': faroW4,
      'faro_w_5': faroW5,
      'faro_w_6': faroW6,
      'ba_w_1': baW1,
      'ba_w_2': baW2,
      'ba_w_3': baW3,
      'ba_w_4': baW4,
      'ba_w_5': baW5,
      'ba_w_6': baW6,
      'ba_w_7': baW7,
      'be_w_1': beW1,
      'be_w_2': beW2,
      'be_w_3': beW3,
      'be_w_4': beW4,
      'be_w_5': beW5,
      'be_w_6': beW6,
      'be_w_7': beW7,
      'ki_m_1': kiM1,
      'ki_m_2': kiM2,
      'ki_m_3': kiM3,
      'ki_m_4': kiM4,
      'ki_m_5': kiM5,
      'ki_m_6': kiM6,
      'ki_m_7': kiM7,
      'ki_m_8': kiM8,
      'ki_m_9': kiM9,
      'ki_m_10': kiM10,
      'diro_m_1': diroM1,
      'diro_m_2': diroM2,
      'diro_m_3': diroM3,
      'diro_m_4': diroM4,
      'diro_m_5': diroM5,
      'diro_m_6': diroM6,
      'diro_m_7': diroM7,
      'diro_m_8': diroM8,
      'ofstu_m_1': ofstuM1,
      'ofstu_m_2': ofstuM2,
      'ofstu_m_3': ofstuM3,
      'ofstu_m_4': ofstuM4,
      'ofstu_m_5': ofstuM5,
      'ofstu_m_6': ofstuM6,
      'ofstu_m_7': ofstuM7,
      'ofstu_m_8': ofstuM8,
      'faro_m_1': faroM1,
      'faro_m_2': faroM2,
      'faro_m_3': faroM3,
      'faro_m_4': faroM4,
      'faro_m_5': faroM5,
      'faro_m_6': faroM6,
      'faro_m_7': faroM7,
      'faro_m_8': faroM8,
      'faro_m_9': faroM9,
      'faro_m_10': faroM10,
      'ba_m_1': baM1,
      'ba_m_2': baM2,
      'ba_m_3': baM3,
      'ba_m_4': baM4,
      'ba_m_5': baM5,
      'ba_m_6': baM6,
      'be_m_1': beM1,
      'be_m_2': beM2,
      'be_m_3': beM3,
      'be_m_4': beM4,
      'be_m_5': beM5,
      'be_m_6': beM6,
      'be_m_7': beM7,
      'ki_up_1': kiUp1,
      'ki_up_2': kiUp2,
      'ki_up_3': kiUp3,
      'ki_up_4': kiUp4,
      'ki_up_5': kiUp5,
      'customer_uid': customerUid,
      'cleaner_uid': cleanerUid,
    }.withoutNulls,
  );

  return firestoreData;
}
