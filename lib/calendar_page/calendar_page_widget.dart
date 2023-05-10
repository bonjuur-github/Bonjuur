import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shopping_cart/shopping_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_page_model.dart';
export 'calendar_page_model.dart';

class CalendarPageWidget extends StatefulWidget {
  const CalendarPageWidget({
    Key? key,
    this.neededHoursReceived,
  }) : super(key: key);

  final double? neededHoursReceived;

  @override
  _CalendarPageWidgetState createState() => _CalendarPageWidgetState();
}

class _CalendarPageWidgetState extends State<CalendarPageWidget> {
  late CalendarPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF7069AD),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/BACKGROUND_tell_us_your_home.png',
              ).image,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                        icon: Icon(
                          Icons.chevron_left,
                          color: Color(0xFFA445E4),
                          size: 20.0,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 40.0),
                  child: Container(
                    width: 380.0,
                    height: 650.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Text(
                            'Please select the beginning day?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF7069AD),
                                  fontSize: 16.0,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                        Text(
                          '(We will come every weekday for 30 days)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF7069AD),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 20.0),
                          child: FlutterFlowCalendar(
                            color: Color(0xFF7069AD),
                            iconColor: Color(0xFF7069AD),
                            weekFormat: false,
                            weekStartsMonday: false,
                            rowHeight: 35.0,
                            onChange: (DateTimeRange? newSelectedDate) {
                              setState(() => _model.smallCalendarSelectedDay =
                                  newSelectedDate);
                            },
                            titleStyle: TextStyle(
                              color: Color(0xFF7069AD),
                              fontWeight: FontWeight.w200,
                            ),
                            dayOfWeekStyle: GoogleFonts.getFont(
                              'Roboto',
                              color: Color(0xFF7069AD),
                              fontWeight: FontWeight.w600,
                            ),
                            dateStyle: TextStyle(
                              color: Color(0xFF7069AD),
                              fontWeight: FontWeight.normal,
                            ),
                            selectedDateStyle: TextStyle(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontWeight: FontWeight.bold,
                            ),
                            inactiveDateStyle: TextStyle(
                              color: Color(0xFFC5CED6),
                              fontWeight: FontWeight.w200,
                            ),
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Please select the time slot?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF7069AD),
                                  fontSize: 16.0,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 20.0),
                          child: FlutterFlowChoiceChips(
                            options: [
                              ChipData('9am - 12am'),
                              ChipData('12am -2pm'),
                              ChipData('2pm - 5pm')
                            ],
                            onChanged: (val) => setState(
                                () => _model.choiceChipsValue = val?.first),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0xFF7069AD),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              iconColor: Colors.white,
                              iconSize: 0.0,
                              elevation: 2.0,
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFE3E7ED),
                                  ),
                              iconColor: Color(0xFFE3E7ED),
                              iconSize: 18.0,
                              elevation: 2.0,
                            ),
                            chipSpacing: 10.0,
                            multiselect: false,
                            alignment: WrapAlignment.center,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 10.0, 40.0, 20.0),
                          child: Container(
                            width: 200.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().packageStartDate =
                                    _model.smallCalendarSelectedDay?.end;
                                FFAppState().timeSlot =
                                    _model.choiceChipsValue!;
                                FFAppState().neededHours =
                                    widget.neededHoursReceived!;
                                FFAppState().lastVisitedPage = 'calendar';
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShoppingCartWidget(),
                                  ),
                                );
                              },
                              text: 'Schedule Now',
                              options: FFButtonOptions(
                                width: double.infinity,
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
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
