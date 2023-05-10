import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

String? calculateResult(
  String? studio,
  String? bedroom,
  String? bathroom,
  String? guest,
) {
  final studioTypes = ['Studio', '1', '2', '3', '3+'];
  final bedroomTypes = ['1', '2', '3'];
  final bathroomTypes = ['0', '1', '2', '2+'];
  final guestTypes = ['1', '2', '3', '4', '5+'];

  final List<String?> results = [
    // Studio: Studio, Bedroom: 1, Bathroom: 0, Guest: 1
    'Result 1',
    // Studio: Studio, Bedroom: 1, Bathroom: 0, Guest: 2
    'Result 2',
    // Studio: Studio, Bedroom: 1, Bathroom: 0, Guest: 3
    'Result 3',
    // Studio: Studio, Bedroom: 1, Bathroom: 0, Guest: 4
    'Result 4',
    // Studio: Studio, Bedroom: 1, Bathroom: 0, Guest: 5+
    'Result 5',
    // ... more results for other combinations of selections
  ];

  final int studioIndex = studioTypes.indexOf(studio!);
  final int bedroomIndex = bedroomTypes.indexOf(bedroom!);
  final int bathroomIndex = bathroomTypes.indexOf(bathroom!);
  final int guestIndex = guestTypes.indexOf(guest!);

  if (studioIndex == -1 ||
      bedroomIndex == -1 ||
      bathroomIndex == -1 ||
      guestIndex == -1) {
    // invalid selection, return empty string or throw an exception
    return 'invalid';
  }

  final int resultIndex = studioIndex! *
          bedroomTypes.length *
          bathroomTypes.length *
          guestTypes.length +
      bedroomIndex! * bathroomTypes.length * guestTypes.length +
      bathroomIndex! * guestTypes.length +
      guestIndex!;

  return results[resultIndex];
}

int? shortenversion(
  String? radioButton1,
  String? radioButton2,
) {
  return {
        'Studio1': 55,
        '12': 2,
        '13': 3,
        '21': 4,
        '22': 5,
        '23': 6,
        '31': 7,
        '32': 8,
        '33': 9,
      }['$radioButton1$radioButton2'] ??
      11;
}

double? finalPriceCopy(
  double? neededHours,
  String? currentUserUid,
) {
  /// Get the Firestore instance
  final firestore = FirebaseFirestore.instance;

  // Get the order document by orderUid
  final orderDocSnapshotFuture =
      firestore.collection('order').doc(currentUserUid).get();

  // Use the then method to get the document snapshot when the future completes
  final updatedSalePriceFuture =
      orderDocSnapshotFuture.then((orderDocSnapshot) {
    // Get the sale_price field value
    final salePrice = orderDocSnapshot.data()!['sale_price'];

    // Multiply the sale_price by the neededHours
    final updatedSalePrice = salePrice * neededHours!;

    // Return the updated sale_price value
    return updatedSalePrice;
  });
}

double? finalPriceCopyCopy(
  double? neededHours,
  String? currentUserUid,
) {
  /// Get the Firestore instance
  final firestore = FirebaseFirestore.instance;

  // Get the order document by orderUid
  final orderDocSnapshotFuture =
      firestore.collection('order').doc(currentUserUid).get();

  // Use the then method to get the document snapshot when the future completes
  final updatedSalePriceFuture =
      orderDocSnapshotFuture.then((orderDocSnapshot) {
    // Get the sale_price field value
    final salePrice = orderDocSnapshot.data()!['sale_price'];

    // Multiply the sale_price by the neededHours
    final updatedSalePrice = salePrice * neededHours!;

    // Return the updated sale_price value
    return updatedSalePrice;
  });

  Future<double> convertDynamicToDouble(
      Future<dynamic> updatedSalePriceFuture) {
    return updatedSalePriceFuture.then((value) => value.toDouble());
  }
}

double? finalPrice(
  double? neededHours,
  String? currentUserUid,
) {
  /// Get the Firestore instance
  final firestore = FirebaseFirestore.instance;

  // Get the order document by orderUid
  final orderDocSnapshotFuture =
      firestore.collection('order').doc(currentUserUid).get();

  // Use the then method to get the document snapshot when the future completes
  final updatedSalePriceFuture =
      orderDocSnapshotFuture.then((orderDocSnapshot) {
    // Get the sale_price field value
    final salePrice = orderDocSnapshot.data()!['sale_price'];

    // Multiply the sale_price by the neededHours
    final updatedSalePrice = salePrice * neededHours!;

    // Return the updated sale_price value
    return updatedSalePrice;
  });
}

double? newCustomFunction(
  double? neededHours,
  double? salePrice,
) {
  final updatedPrice = salePrice! * neededHours!;
  return updatedPrice;
}

String? createCustomerCleanerPairId(
  String? customerId,
  String? cleanerId,
) {
  return '$customerId$cleanerId';
}

String? extractToDoFromJson(String? stringJson) {
  if (stringJson == null) {
    return null;
  }

  final contentLines = stringJson.split('\n');
  final contentDict = <String, String>{};

  for (final line in contentLines) {
    final keyValue = line.split(': ');
    contentDict[keyValue[0].trim()] = keyValue[1].trim().replaceAll('"', '');
  }

  final toDo = contentDict['to-do'];
  return toDo;
}

String? toDoFromJson(dynamic retrievedJsonPath) {
  if (retrievedJsonPath == null) {
    return null;
  }

  Map<String, dynamic> jsonData = jsonDecode(retrievedJsonPath);
  String? id = jsonData['id'];
  String? room = jsonData['room'];
  String? toDo = jsonData['to-do'];
  String? isDone = jsonData['is-done'];

  return id;
}
