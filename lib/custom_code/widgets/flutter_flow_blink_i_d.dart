// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:blinkid_flutter/microblink_scanner.dart';
import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FlutterFlowBlinkID extends StatefulWidget {
  const FlutterFlowBlinkID({
    Key? key,
    this.width,
    this.height,
    this.iosLicense,
    this.androidLicense,
    required this.onScanningDone,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? iosLicense;
  final String? androidLicense;
  final Future<dynamic> Function() onScanningDone;

  @override
  _FlutterFlowBlinkIDState createState() => _FlutterFlowBlinkIDState();
}

class _FlutterFlowBlinkIDState extends State<FlutterFlowBlinkID> {
  String _resultString = "";
  String _fullDocumentFrontImageBase64 = "";
  String _fullDocumentBackImageBase64 = "";
  String _faceImageBase64 = "";

  Future<void> scan() async {
    String license;
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      license = widget.iosLicense ?? "";
    } else if (Theme.of(context).platform == TargetPlatform.android) {
      license = widget.androidLicense ?? "";
    } else {
      license = "";
    }

    var idRecognizer = BlinkIdMultiSideRecognizer();
    idRecognizer.returnFullDocumentImage = true;
    idRecognizer.returnFaceImage = true;

    BlinkIdOverlaySettings settings = BlinkIdOverlaySettings();

    print('----- INIT ----- MicroblinkScanner.scanWithCamera ----- ');
    var results = await MicroblinkScanner.scanWithCamera(
        RecognizerCollection([idRecognizer]), settings, license);
    print('----- PARSE ----- BlinkIdMultiSideRecognizerResult ----- ');

    print("Scanning result: " + results.toString());

    if (!mounted) return;

    if (results.length == 0) return;
    for (var result in results) {
      if (result is BlinkIdMultiSideRecognizerResult) {
        if (result.mrzResult?.documentType == MrtdDocumentType.Passport) {
          _resultString = getPassportResultString(result);
        } else {
          _resultString = getIdResultString(result);
        }

        setState(() {
          _resultString = _resultString;
          _fullDocumentFrontImageBase64 = result.fullDocumentFrontImage ?? "";
          _fullDocumentBackImageBase64 = result.fullDocumentBackImage ?? "";
          _faceImageBase64 = result.faceImage ?? "";
        });

        return;
      }
    }
  }

  String getIdResultString(BlinkIdMultiSideRecognizerResult result) {
    setState(() {
      FFAppState().BlinkIDResultFirstName = getStringResult(result.firstName);
      FFAppState().BlinkIDResultLastName = getStringResult(result.lastName);
      FFAppState().BlinkIDResultFullName = getStringResult(result.fullName);
      FFAppState().BlinkIDResultLocalizedName =
          getStringResult(result.localizedName);
      FFAppState().BlinkIDResultAdditionalNameInformation =
          getStringResult(result.additionalNameInformation);
      FFAppState().BlinkIDResultAddress = getStringResult(result.address);
      FFAppState().BlinkIDResultAdditionalAddressInformation =
          getStringResult(result.additionalAddressInformation);
      FFAppState().BlinkIDResultAdditionalAddressInformation =
          getStringResult(result.additionalAddressInformation);
      FFAppState().BlinkIDResultDocumentNumber =
          getStringResult(result.documentNumber);
      FFAppState().BlinkIDResultDocumentAdditionalNumber =
          getStringResult(result.documentAdditionalNumber);
      FFAppState().BlinkIDResultSex = getStringResult(result.sex);
      FFAppState().BlinkIDResultIssuingAuthority =
          getStringResult(result.issuingAuthority);
      FFAppState().BlinkIDResultNationality =
          getStringResult(result.nationality);
      FFAppState().BlinkIDResultDateOfBirth =
          toDateResultString(result.dateOfBirth);
      FFAppState().BlinkIDResultAge = result.age ?? 0;
      FFAppState().BlinkIDResultDateOfIssue =
          toDateResultString(result.dateOfIssue);
      FFAppState().BlinkIDResultDateOfExpiry =
          toDateResultString(result.dateOfExpiry);
      FFAppState().BlinkIDResultDateOfExpiryPermanent =
          result.dateOfExpiryPermanent ?? false;
      FFAppState().BlinkIDResultMaritalStatus =
          getStringResult(result.maritalStatus);
      FFAppState().BlinkIDResultPersonalIdNumber =
          getStringResult(result.personalIdNumber);
      FFAppState().BlinkIDResultProfession = getStringResult(result.profession);
      FFAppState().BlinkIDResultRace = getStringResult(result.race);
      FFAppState().BlinkIDResultReligion = getStringResult(result.religion);
      FFAppState().BlinkIDResultResidentialStatus =
          getStringResult(result.residentialStatus);
    });
    widget.onScanningDone();

    return buildResult(result.firstName, "First name") +
        buildResult(result.lastName, "Last name") +
        buildResult(result.fullName, "Full name") +
        buildResult(result.localizedName, "Localized name") +
        buildResult(result.additionalNameInformation, "Additional name info") +
        buildResult(result.address, "Address") +
        buildResult(
            result.additionalAddressInformation, "Additional address info") +
        buildResult(result.documentNumber, "Document number") +
        buildResult(
            result.documentAdditionalNumber, "Additional document number") +
        buildResult(result.sex, "Sex") +
        buildResult(result.issuingAuthority, "Issuing authority") +
        buildResult(result.nationality, "Nationality") +
        buildDateResult(result.dateOfBirth, "Date of birth") +
        buildIntResult(result.age, "Age") +
        buildDateResult(result.dateOfIssue, "Date of issue") +
        buildDateResult(result.dateOfExpiry, "Date of expiry") +
        "Date of expiry permanent: " +
        result.dateOfExpiryPermanent.toString() +
        "\n" +
        buildResult(result.maritalStatus, "Martial status") +
        buildResult(result.personalIdNumber, "Personal Id Number") +
        buildResult(result.profession, "Profession") +
        buildResult(result.race, "Race") +
        buildResult(result.religion, "Religion") +
        buildResult(result.residentialStatus, "Residential Status") +
        buildDriverLicenseResult(result.driverLicenseDetailedInfo) +
        buildDataMatchResult(result.dataMatchResult);
  }

  String toDateResultString(DateResult? dateResult) {
    if (dateResult == null || dateResult.date == null) {
      return "";
    }

    return toDateString(dateResult.date);
  }

  String toDateString(Date? date) {
    if (date == null || date.year == 0) {
      return "";
    }

    return "${date.year}-${date.month}-${date.day}";
  }

  String getStringResult(StringResult? result) {
    if (result == null ||
        result.description == null ||
        result.description!.isEmpty) {
      return "";
    }

    return result.description!;
  }

  String buildResult(StringResult? result, String propertyName) {
    if (result == null ||
        result.description == null ||
        result.description!.isEmpty) {
      return "";
    }

    return propertyName + ": " + result.description! + "\n";
  }

  String buildDateResult(DateResult? result, String propertyName) {
    if (result == null || result!.date == null || result.date!.year == 0) {
      return "";
    }

    return buildResult(result!.originalDateStringResult, propertyName);
  }

  String buildAdditionalProcessingInfoResult(
      AdditionalProcessingInfo? result, String propertyName) {
    if (result == null) {
      return "empty";
    }

    final missingMandatoryFields = result.missingMandatoryFields;
    String returnString = "";

    if (missingMandatoryFields!.isNotEmpty) {
      returnString = propertyName + ":\n";

      for (var i = 0; i < missingMandatoryFields.length; i++) {
        returnString += missingMandatoryFields[i].name + "\n";
      }
    }

    return returnString;
  }

  String buildStringResult(String? result, String propertyName) {
    if (result == null || result.isEmpty) {
      return "";
    }

    return propertyName + ": " + result + "\n";
  }

  String buildIntResult(int? result, String propertyName) {
    if (result == null || result < 0) {
      return "";
    }

    return propertyName + ": " + result.toString() + "\n";
  }

  String buildDriverLicenseResult(DriverLicenseDetailedInfo? result) {
    if (result == null) {
      return "";
    }

    return buildResult(result.restrictions, "Restrictions") +
        buildResult(result.endorsements, "Endorsements") +
        buildResult(result.vehicleClass, "Vehicle class") +
        buildResult(result.conditions, "Conditions");
  }

  String buildDataMatchResult(DataMatchResult? result) {
    if (result == null) {
      return "";
    }

    return buildStringResult(result.dateOfBirth.toString(), "Date of birth") +
        buildStringResult(result.dateOfExpiry.toString(), "Date Of Expiry") +
        buildStringResult(result.documentNumber.toString(), "Document Number") +
        buildStringResult(result.stateForWholeDocument.toString(),
            "State For Whole Document");
  }

  String getPassportResultString(BlinkIdMultiSideRecognizerResult? result) {
    if (result == null) {
      return "";
    }

    var dateOfBirth = "";
    if (result.mrzResult?.dateOfBirth != null) {
      dateOfBirth = "Date of birth: ${result.mrzResult!.dateOfBirth?.day}."
          "${result.mrzResult!.dateOfBirth?.month}."
          "${result.mrzResult!.dateOfBirth?.year}\n";
    }

    var dateOfExpiry = "";
    if (result.mrzResult?.dateOfExpiry != null) {
      dateOfExpiry = "Date of expiry: ${result.mrzResult?.dateOfExpiry?.day}."
          "${result.mrzResult?.dateOfExpiry?.month}."
          "${result.mrzResult?.dateOfExpiry?.year}\n";
    }

    return "First name: ${result.mrzResult?.secondaryId}\n"
        "Last name: ${result.mrzResult?.primaryId}\n"
        "Document number: ${result.mrzResult?.documentNumber}\n"
        "Sex: ${result.mrzResult?.gender}\n"
        "$dateOfBirth"
        "$dateOfExpiry";
  }

  @override
  Widget build(BuildContext context) {
    Widget fullDocumentFrontImage = Container();
    if (_fullDocumentFrontImageBase64 != null &&
        _fullDocumentFrontImageBase64 != "") {
      fullDocumentFrontImage = Column(
        children: <Widget>[
          Text("Document Front Image:"),
          Image.memory(
            Base64Decoder().convert(_fullDocumentFrontImageBase64),
            height: 180,
            width: 350,
          )
        ],
      );
    }

    Widget fullDocumentBackImage = Container();
    if (_fullDocumentBackImageBase64 != null &&
        _fullDocumentBackImageBase64 != "") {
      fullDocumentBackImage = Column(
        children: <Widget>[
          Text("Document Back Image:"),
          Image.memory(
            Base64Decoder().convert(_fullDocumentBackImageBase64),
            height: 180,
            width: 350,
          )
        ],
      );
    }

    Widget faceImage = Container();
    if (_faceImageBase64 != null && _faceImageBase64 != "") {
      faceImage = Column(
        children: <Widget>[
          Text("Face Image:"),
          Image.memory(
            Base64Decoder().convert(_faceImageBase64),
            height: 150,
            width: 100,
          )
        ],
      );
    }

    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Scan Button pressed ...');
                      setState(() {
                        _resultString = "";
                        _fullDocumentFrontImageBase64 = "";
                        _fullDocumentBackImageBase64 = "";
                        _faceImageBase64 = "";
                      });
                      scan();
                    },
                    text: 'Scan',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
              Text(_resultString),
              fullDocumentFrontImage,
              fullDocumentBackImage,
              faceImage,
              Container(height: 70),
            ],
          )),
        ),
      ],
    );
  }
}

class FFButtonOptions {
  const FFButtonOptions({
    this.textStyle,
    this.elevation,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.disabledColor,
    this.disabledTextColor,
    this.splashColor,
    this.iconSize,
    this.iconColor,
    this.iconPadding,
    this.borderRadius,
    this.borderSide,
  });

  final TextStyle? textStyle;
  final double? elevation;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? disabledColor;
  final Color? disabledTextColor;
  final Color? splashColor;
  final double? iconSize;
  final Color? iconColor;
  final EdgeInsetsGeometry? iconPadding;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
}

class FFButtonWidget extends StatefulWidget {
  const FFButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconData,
    required this.options,
    this.showLoadingIndicator = true,
  }) : super(key: key);

  final String text;
  final Widget? icon;
  final IconData? iconData;
  final Function() onPressed;
  final FFButtonOptions options;
  final bool showLoadingIndicator;

  @override
  State<FFButtonWidget> createState() => _FFButtonWidgetState();
}

class _FFButtonWidgetState extends State<FFButtonWidget> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    Widget textWidget = loading
        ? Center(
            child: Container(
              width: 23,
              height: 23,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  widget.options.textStyle!.color ?? Colors.white,
                ),
              ),
            ),
          )
        : AutoSizeText(
            widget.text,
            style: widget.options.textStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          );

    final onPressed = widget.showLoadingIndicator
        ? () async {
            if (loading) {
              return;
            }
            setState(() => loading = true);
            try {
              await widget.onPressed();
            } finally {
              if (mounted) {
                setState(() => loading = false);
              }
            }
          }
        : () => widget.onPressed();

    ButtonStyle style = ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius:
              widget.options.borderRadius ?? BorderRadius.circular(8.0),
          side: widget.options.borderSide ?? BorderSide.none,
        ),
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return widget.options.disabledTextColor;
          }
          return widget.options.textStyle!.color;
        },
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return widget.options.disabledColor;
          }
          return widget.options.color;
        },
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.pressed)) {
          return widget.options.splashColor;
        }
        return null;
      }),
      padding: MaterialStateProperty.all(widget.options.padding ??
          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0)),
      elevation:
          MaterialStateProperty.all<double>(widget.options.elevation ?? 2.0),
    );

    if (widget.icon != null || widget.iconData != null) {
      return Container(
        height: widget.options.height,
        width: widget.options.width,
        child: ElevatedButton.icon(
          icon: Padding(
            padding: widget.options.iconPadding ?? EdgeInsets.zero,
            child: widget.icon ??
                FaIcon(
                  widget.iconData,
                  size: widget.options.iconSize,
                  color: widget.options.iconColor ??
                      widget.options.textStyle!.color,
                ),
          ),
          label: textWidget,
          onPressed: onPressed,
          style: style,
        ),
      );
    }

    return Container(
      height: widget.options.height,
      width: widget.options.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: textWidget,
      ),
    );
  }
}
