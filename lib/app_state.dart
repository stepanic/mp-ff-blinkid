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
      'sRwAAAEXaHIuaXRhbGsuZmYuaWQuc2Nhbm5pbmfdbX2qwckoBDx6sH/wLAbo6f+0IgDJ+Tyr7jFId0fnmWWfQfi8UiOxDV0OEuY177TcVz/fRCHnTVYsqtdKMcDPEG9I8C5lWKUsaO6UEJ3zce7mcqSbb2yl8CTbxUbMsl42WE3u7Sob/H7q1EMcE8/+IkN9lBxulbxkNYpJgavlDblhkV2OA/YA2qZ89EC0RIThGYQVIMZTYkylmd5q8ncYpvMDllZH8R06duyCzEA+Uw==';
  String get BlinkIDiOSLicense => _BlinkIDiOSLicense;
  set BlinkIDiOSLicense(String _value) {
    _BlinkIDiOSLicense = _value;
  }

  String _BlinkIDAndroidLicense =
      'sRwAAAAXaHIuaXRhbGsuZmYuaWQuc2Nhbm5pbmeZGp+xpiZRGZNOZg8iXAeblQHosl6BDMhUOvrtEOyibl2h8PXiXRQX3V77WxA9HGjBBMg0u4LpEHzsBQ8O3MHgBYvrAtiyyQGlvvt6mAZ6w4Hvxfsp6oz679jcqscZ6mVrmZhH4ZWsLftmTQKyp24DUkaKRvLAy8WFyDnwSdrD+5kJ8mdDOLnBycIpbg/vBTrTEFvHp2Cixu5JbRS6OimfydV1HJVcNP4AZtovVVrIjA==';
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
