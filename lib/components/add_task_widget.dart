import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_task_model.dart';
export 'add_task_model.dart';

class AddTaskWidget extends StatefulWidget {
  const AddTaskWidget({super.key});

  @override
  State<AddTaskWidget> createState() => _AddTaskWidgetState();
}

class _AddTaskWidgetState extends State<AddTaskWidget> {
  late AddTaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTaskModel());

    _model.titleTextController ??= TextEditingController();
    _model.titleFocusNode ??= FocusNode();

    _model.detailsTextController ??= TextEditingController();
    _model.detailsFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryText,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Text(
              'Add Task',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineMediumFamily),
                  ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                controller: _model.titleTextController,
                focusNode: _model.titleFocusNode,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelLargeFamily),
                      ),
                  hintText: 'Title...',
                  hintStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelLargeFamily,
                        color: const Color(0x8657636C),
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelLargeFamily),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 26.0, 24.0, 26.0),
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelLargeFamily),
                    ),
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator:
                    _model.titleTextControllerValidator.asValidator(context),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                controller: _model.detailsTextController,
                focusNode: _model.detailsFocusNode,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelLargeFamily),
                      ),
                  hintText: 'Details...',
                  hintStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelLargeFamily,
                        color: const Color(0x8657636C),
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelLargeFamily),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 26.0, 24.0, 26.0),
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelLargeFamily),
                    ),
                maxLines: null,
                minLines: 3,
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator:
                    _model.detailsTextControllerValidator.asValidator(context),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                await TasksRecord.collection.doc().set(createTasksRecordData(
                      title: valueOrDefault<String>(
                        _model.titleTextController.text,
                        'Title',
                      ),
                      details: valueOrDefault<String>(
                        _model.detailsTextController.text,
                        'Details',
                      ),
                      completed: false,
                      user: currentUserReference,
                      created: getCurrentTimestamp,
                    ));
                Navigator.pop(context);
              },
              text: 'Add Task',
              icon: const Icon(
                Icons.add,
                size: 15.0,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 65.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).labelMediumFamily,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelMediumFamily),
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
