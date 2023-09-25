import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _BlinkIDiOSLicense =
      'sRwAAAEXaHIuaXRhbGsuZmYuaWQuc2Nhbm5pbmfdbX2qwckoBDx6sA/0SgbuGoEsNb23BG03/oE5PmL0E6AC/VNUwy3qyBsxK5z5amP9we0scpbgHXtJAxS8jzXNvxN0de3vvxEXWA7MzBKdfH1zVeLEPEwhOWD4oxX+Hn5/WgeR4OmWpxVnFBYR/XQ3pDCAUWHlZ0BQ+kWCCjJUEuky+iMHljiDd2gyLD+VHJWPaABl3DdIp2m5IPLP/SHK21wyJuUJHNA+';
  String get BlinkIDiOSLicense => _BlinkIDiOSLicense;
  set BlinkIDiOSLicense(String _value) {
    _BlinkIDiOSLicense = _value;
  }

  String _BlinkIDAndroidLicense =
      'sRwAAAAXaHIuaXRhbGsuZmYuaWQuc2Nhbm5pbmeZGp+xpiZRGZNOZn8mOgedqI1F1BFfb4MNee+qAqdAi7lID2h5Qx24J1iSOPcxdKAbOw4nm5GSrQZI7ePzhz80U6wBO7BhAs7Dr0tx/2wWkj4s6AHuUdSzBnP1OTYd+lf+8QzPiiGYxL3aduK+SaJpcrirbJl/X3Ma9n7gHtxeRZm9G8Dz9miIxaFXBlasIuklkDz9jhXBpZp3wrd+D7NAosri8+JhFPQG';
  String get BlinkIDAndroidLicense => _BlinkIDAndroidLicense;
  set BlinkIDAndroidLicense(String _value) {
    _BlinkIDAndroidLicense = _value;
  }

  String _BlinkIDResultFirstName = '';
  String get BlinkIDResultFirstName => _BlinkIDResultFirstName;
  set BlinkIDResultFirstName(String _value) {
    _BlinkIDResultFirstName = _value;
  }

  String _BlinkIDResultLastName = '';
  String get BlinkIDResultLastName => _BlinkIDResultLastName;
  set BlinkIDResultLastName(String _value) {
    _BlinkIDResultLastName = _value;
  }

  String _BlinkIDResultFullName = '';
  String get BlinkIDResultFullName => _BlinkIDResultFullName;
  set BlinkIDResultFullName(String _value) {
    _BlinkIDResultFullName = _value;
  }

  String _BlinkIDResultLocalizedName = '';
  String get BlinkIDResultLocalizedName => _BlinkIDResultLocalizedName;
  set BlinkIDResultLocalizedName(String _value) {
    _BlinkIDResultLocalizedName = _value;
  }

  String _BlinkIDResultAdditionalNameInformation = '';
  String get BlinkIDResultAdditionalNameInformation =>
      _BlinkIDResultAdditionalNameInformation;
  set BlinkIDResultAdditionalNameInformation(String _value) {
    _BlinkIDResultAdditionalNameInformation = _value;
  }

  String _BlinkIDResultAddress = '';
  String get BlinkIDResultAddress => _BlinkIDResultAddress;
  set BlinkIDResultAddress(String _value) {
    _BlinkIDResultAddress = _value;
  }

  String _BlinkIDResultAdditionalAddressInformation = '';
  String get BlinkIDResultAdditionalAddressInformation =>
      _BlinkIDResultAdditionalAddressInformation;
  set BlinkIDResultAdditionalAddressInformation(String _value) {
    _BlinkIDResultAdditionalAddressInformation = _value;
  }

  String _BlinkIDResultDocumentNumber = '';
  String get BlinkIDResultDocumentNumber => _BlinkIDResultDocumentNumber;
  set BlinkIDResultDocumentNumber(String _value) {
    _BlinkIDResultDocumentNumber = _value;
  }

  String _BlinkIDResultDocumentAdditionalNumber = '';
  String get BlinkIDResultDocumentAdditionalNumber =>
      _BlinkIDResultDocumentAdditionalNumber;
  set BlinkIDResultDocumentAdditionalNumber(String _value) {
    _BlinkIDResultDocumentAdditionalNumber = _value;
  }

  String _BlinkIDResultSex = '';
  String get BlinkIDResultSex => _BlinkIDResultSex;
  set BlinkIDResultSex(String _value) {
    _BlinkIDResultSex = _value;
  }

  String _BlinkIDResultIssuingAuthority = '';
  String get BlinkIDResultIssuingAuthority => _BlinkIDResultIssuingAuthority;
  set BlinkIDResultIssuingAuthority(String _value) {
    _BlinkIDResultIssuingAuthority = _value;
  }

  String _BlinkIDResultNationality = '';
  String get BlinkIDResultNationality => _BlinkIDResultNationality;
  set BlinkIDResultNationality(String _value) {
    _BlinkIDResultNationality = _value;
  }

  String _BlinkIDResultDateOfBirth = '';
  String get BlinkIDResultDateOfBirth => _BlinkIDResultDateOfBirth;
  set BlinkIDResultDateOfBirth(String _value) {
    _BlinkIDResultDateOfBirth = _value;
  }

  int _BlinkIDResultAge = 0;
  int get BlinkIDResultAge => _BlinkIDResultAge;
  set BlinkIDResultAge(int _value) {
    _BlinkIDResultAge = _value;
  }

  String _BlinkIDResultDateOfIssue = '';
  String get BlinkIDResultDateOfIssue => _BlinkIDResultDateOfIssue;
  set BlinkIDResultDateOfIssue(String _value) {
    _BlinkIDResultDateOfIssue = _value;
  }

  String _BlinkIDResultDateOfExpiry = '';
  String get BlinkIDResultDateOfExpiry => _BlinkIDResultDateOfExpiry;
  set BlinkIDResultDateOfExpiry(String _value) {
    _BlinkIDResultDateOfExpiry = _value;
  }

  bool _BlinkIDResultDateOfExpiryPermanent = false;
  bool get BlinkIDResultDateOfExpiryPermanent =>
      _BlinkIDResultDateOfExpiryPermanent;
  set BlinkIDResultDateOfExpiryPermanent(bool _value) {
    _BlinkIDResultDateOfExpiryPermanent = _value;
  }

  String _BlinkIDResultMaritalStatus = '';
  String get BlinkIDResultMaritalStatus => _BlinkIDResultMaritalStatus;
  set BlinkIDResultMaritalStatus(String _value) {
    _BlinkIDResultMaritalStatus = _value;
  }

  String _BlinkIDResultPersonalIdNumber = '';
  String get BlinkIDResultPersonalIdNumber => _BlinkIDResultPersonalIdNumber;
  set BlinkIDResultPersonalIdNumber(String _value) {
    _BlinkIDResultPersonalIdNumber = _value;
  }

  String _BlinkIDResultProfession = '';
  String get BlinkIDResultProfession => _BlinkIDResultProfession;
  set BlinkIDResultProfession(String _value) {
    _BlinkIDResultProfession = _value;
  }

  String _BlinkIDResultRace = '';
  String get BlinkIDResultRace => _BlinkIDResultRace;
  set BlinkIDResultRace(String _value) {
    _BlinkIDResultRace = _value;
  }

  String _BlinkIDResultReligion = '';
  String get BlinkIDResultReligion => _BlinkIDResultReligion;
  set BlinkIDResultReligion(String _value) {
    _BlinkIDResultReligion = _value;
  }

  String _BlinkIDResultResidentialStatus = '';
  String get BlinkIDResultResidentialStatus => _BlinkIDResultResidentialStatus;
  set BlinkIDResultResidentialStatus(String _value) {
    _BlinkIDResultResidentialStatus = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
