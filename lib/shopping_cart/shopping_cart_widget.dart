import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shopping_cart_model.dart';
export 'shopping_cart_model.dart';

class ShoppingCartWidget extends StatefulWidget {
  const ShoppingCartWidget({Key? key}) : super(key: key);

  @override
  _ShoppingCartWidgetState createState() => _ShoppingCartWidgetState();
}

class _ShoppingCartWidgetState extends State<ShoppingCartWidget> {
  late ShoppingCartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShoppingCartModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().lastVisitedPage = 'shopping_cart';
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: Color(0xFF7069AD),
                  icon: Icon(
                    Icons.chevron_left,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ],
            ),
          ),
          if (FFAppState().lastVisitedPage == 'calendar')
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cart',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF7069AD),
                                    fontSize: 22.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 30.0),
                        child: StreamBuilder<List<OrderRecord>>(
                          stream: queryOrderRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 30.0,
                                  height: 30.0,
                                  child: CircularProgressIndicator(
                                    color: Color(0xFF7069AD),
                                  ),
                                ),
                              );
                            }
                            List<OrderRecord> containerOrderRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final containerOrderRecord =
                                containerOrderRecordList.isNotEmpty
                                    ? containerOrderRecordList.first
                                    : null;
                            return Container(
                              width: double.infinity,
                              height: 250.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Color(0x3416202A),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 8.0, 8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6.0),
                                      child: Image.asset(
                                        'assets/images/cart_photo.png',
                                        width: double.infinity,
                                        height: 160.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Package:',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xFF7069AD),
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFAppState().packageName,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF7069AD),
                                                                fontSize: 14.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Start Date:',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xFF7069AD),
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      dateTimeFormat(
                                                        'yMMMd',
                                                        FFAppState()
                                                            .packageStartDate,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF7069AD),
                                                                fontSize: 14.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Time Slot:',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xFF7069AD),
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFAppState().timeSlot,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF7069AD),
                                                                fontSize: 14.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 36.0,
                                                    icon: Icon(
                                                      Icons.delete_forever,
                                                      color: Color(0xFF7069AD),
                                                      size: 20.0,
                                                    ),
                                                    onPressed: () async {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Are you sure to delete your order?',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              Color(0xFF7069AD),
                                                          action:
                                                              SnackBarAction(
                                                            label: 'YES',
                                                            textColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            onPressed:
                                                                () async {
                                                              FFAppState()
                                                                      .packageStartDate =
                                                                  DateTime.fromMillisecondsSinceEpoch(
                                                                      1678730460000);
                                                              FFAppState()
                                                                  .timeSlot = '';
                                                              FFAppState()
                                                                  .packageName = '';
                                                              FFAppState()
                                                                      .salePrice =
                                                                  0.0;
                                                              FFAppState()
                                                                      .neededHours =
                                                                  0.0;
                                                            },
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        formatNumber(
                                                          functions
                                                              .newCustomFunction(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    FFAppState()
                                                                        .neededHours,
                                                                    0.0,
                                                                  ),
                                                                  FFAppState()
                                                                      .salePrice),
                                                          formatType:
                                                              FormatType.custom,
                                                          currency: '\$',
                                                          format: '###.0#',
                                                          locale: '',
                                                        ),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF7069AD),
                                                                fontSize: 16.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Ordery Summary',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7069AD),
                                        fontSize: 16.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                26.0, 0.0, 26.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7069AD),
                                        fontSize: 20.0,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        formatNumber(
                                          functions.newCustomFunction(
                                              valueOrDefault<double>(
                                                FFAppState().neededHours,
                                                0.0,
                                              ),
                                              valueOrDefault<double>(
                                                FFAppState().salePrice,
                                                0.0,
                                              )),
                                          formatType: FormatType.custom,
                                          currency: '\$',
                                          format: '###.0#',
                                          locale: '',
                                        ),
                                        '0',
                                      ),
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF7069AD),
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 20.0),
                            child: StreamBuilder<List<UsersRecord>>(
                              stream: queryUsersRecord(
                                queryBuilder: (usersRecord) => usersRecord
                                    .where('user_type', isEqualTo: 'cleaner')
                                    .orderBy('created_time', descending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 30.0,
                                      height: 30.0,
                                      child: CircularProgressIndicator(
                                        color: Color(0xFF7069AD),
                                      ),
                                    ),
                                  );
                                }
                                List<UsersRecord> buttonUsersRecordList =
                                    snapshot.data!;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    if (loggedIn) {
                                      final paymentResponse =
                                          await processStripePayment(
                                        context,
                                        amount: functions
                                            .newCustomFunction(
                                                FFAppState().neededHours,
                                                FFAppState().salePrice)!
                                            .round(),
                                        currency: 'USD',
                                        customerEmail: currentUserEmail,
                                        customerName: currentUserDisplayName,
                                        description: 'Test Transaction',
                                        allowGooglePay: true,
                                        allowApplePay: false,
                                        themeStyle: ThemeMode.light,
                                        buttonColor: Color(0xFF7069AD),
                                        buttonTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      );
                                      if (paymentResponse.paymentId == null) {
                                        if (paymentResponse.errorMessage !=
                                            null) {
                                          showSnackbar(
                                            context,
                                            'Error: ${paymentResponse.errorMessage}',
                                          );
                                        }
                                        return;
                                      }
                                      _model.paymentId =
                                          paymentResponse.paymentId!;

                                      final keepingPlusIsDoneFormCreateData =
                                          createKeepingPlusIsDoneFormRecordData(
                                        kiD1: false,
                                        kiD2: false,
                                        kiD3: false,
                                        kiD4: false,
                                        kiD5: false,
                                        kiD6: false,
                                        kiD7: false,
                                        kiD8: false,
                                        diroD1: false,
                                        diroD2: false,
                                        diroD3: false,
                                        ofstuD1: false,
                                        ofstuD2: false,
                                        ofstuD3: false,
                                        faroD1: false,
                                        faroD2: false,
                                        faroD3: false,
                                        baD1: false,
                                        baD2: false,
                                        baD3: false,
                                        baD4: false,
                                        baD5: false,
                                        baD6: false,
                                        beD1: false,
                                        beD2: false,
                                        beD3: false,
                                        beD4: false,
                                        kiW1: false,
                                        kiW2: false,
                                        kiW3: false,
                                        kiW4: false,
                                        kiW5: false,
                                        diroW1: false,
                                        diroW2: false,
                                        diroW3: false,
                                        diroW4: false,
                                        diroW5: false,
                                        diroW6: false,
                                        diroW7: false,
                                        ofstuW1: false,
                                        ofstuW2: false,
                                        ofstuW3: false,
                                        ofstuW4: false,
                                        ofstuW5: false,
                                        ofstuW6: false,
                                        faroW1: false,
                                        faroW2: false,
                                        faroW3: false,
                                        faroW4: false,
                                        faroW5: false,
                                        faroW6: false,
                                        baW1: false,
                                        baW2: false,
                                        baW3: false,
                                        baW4: false,
                                        baW5: false,
                                        baW6: false,
                                        baW7: false,
                                        beW1: false,
                                        beW2: false,
                                        beW3: false,
                                        beW4: false,
                                        beW5: false,
                                        beW6: false,
                                        beW7: false,
                                        kiM1: false,
                                        kiM2: false,
                                        kiM3: false,
                                        kiM4: false,
                                        kiM5: false,
                                        kiM6: false,
                                        kiM7: false,
                                        kiM8: false,
                                        kiM9: false,
                                        kiM10: false,
                                        diroM1: false,
                                        diroM2: false,
                                        diroM3: false,
                                        diroM4: false,
                                        diroM5: false,
                                        diroM6: false,
                                        diroM7: false,
                                        diroM8: false,
                                        ofstuM1: false,
                                        ofstuM2: false,
                                        ofstuM3: false,
                                        ofstuM4: false,
                                        ofstuM5: false,
                                        ofstuM6: false,
                                        ofstuM7: false,
                                        ofstuM8: false,
                                        faroM1: false,
                                        faroM2: false,
                                        faroM3: false,
                                        faroM4: false,
                                        faroM5: false,
                                        faroM6: false,
                                        faroM7: false,
                                        faroM8: false,
                                        faroM9: false,
                                        faroM10: false,
                                        baM1: false,
                                        baM2: false,
                                        baM3: false,
                                        baM4: false,
                                        baM5: false,
                                        baM6: false,
                                        beM1: false,
                                        beM2: false,
                                        beM3: false,
                                        beM4: false,
                                        beM5: false,
                                        beM6: false,
                                        beM7: false,
                                        kiUp1: false,
                                        kiUp2: false,
                                        kiUp3: false,
                                        kiUp4: false,
                                        kiUp5: false,
                                        customerUid: currentUserUid,
                                        cleanerUid:
                                            buttonUsersRecordList.first.uid,
                                      );
                                      await KeepingPlusIsDoneFormRecord
                                          .collection
                                          .doc()
                                          .set(keepingPlusIsDoneFormCreateData);

                                      final orderCreateData =
                                          createOrderRecordData(
                                        salePrice: FFAppState().salePrice,
                                        timeSlot: FFAppState().timeSlot,
                                        packageStartDate:
                                            FFAppState().packageStartDate,
                                        orderDate: getCurrentTimestamp,
                                        packageName: FFAppState().packageName,
                                        orderUid: currentUserUid,
                                      );
                                      await OrderRecord.collection
                                          .doc()
                                          .set(orderCreateData);

                                      final usersUpdateData =
                                          createUsersRecordData(
                                        hasSubscribed: true,
                                      );
                                      await currentUserReference!
                                          .update(usersUpdateData);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Sign in to your account to make order.',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor: Color(0xFF7069AD),
                                        ),
                                      );

                                      context.pushNamed('Sign_In');
                                    }

                                    setState(() {});
                                  },
                                  text: 'Proceed to Checkout',
                                  options: FFButtonOptions(
                                    width: 320.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF7069AD),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (FFAppState().lastVisitedPage != 'calendar')
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your cart is empty at that time.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF7069AD),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, -9.0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 0.0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 0.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.home,
                          color: Color(0x337069AD),
                          size: 25.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('homescreen');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 0.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.check,
                          color: Color(0x347069AD),
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('checklist_for_customer');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 0.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.chat,
                          color: Color(0x337069AD),
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 0.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Color(0xFF7069AD),
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('shopping_cart');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
