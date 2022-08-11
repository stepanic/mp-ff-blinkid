import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  late SharedPreferences prefs;

  String BlinkIDiOSLicense =
      'sRwAAAEXaHIuaXRhbGsuZmYuaWQuc2Nhbm5pbmfdbX2qwckoBDx6sH/wLAbo6f+0IgDJ+Tyr7jFId0fnmWWfQfi8UiOxDV0OEuY177TcVz/fRCHnTVYsqtdKMcDPEG9I8C5lWKUsaO6UEJ3zce7mcqSbb2yl8CTbxUbMsl42WE3u7Sob/H7q1EMcE8/+IkN9lBxulbxkNYpJgavlDblhkV2OA/YA2qZ89EC0RIThGYQVIMZTYkylmd5q8ncYpvMDllZH8R06duyCzEA+Uw==';

  String BlinkIDAndroidLicense =
      'sRwAAAAXaHIuaXRhbGsuZmYuaWQuc2Nhbm5pbmeZGp+xpiZRGZNOZg8iXAeblQHosl6BDMhUOvrtEOyibl2h8PXiXRQX3V77WxA9HGjBBMg0u4LpEHzsBQ8O3MHgBYvrAtiyyQGlvvt6mAZ6w4Hvxfsp6oz679jcqscZ6mVrmZhH4ZWsLftmTQKyp24DUkaKRvLAy8WFyDnwSdrD+5kJ8mdDOLnBycIpbg/vBTrTEFvHp2Cixu5JbRS6OimfydV1HJVcNP4AZtovVVrIjA==';

  String BlinkIDResultFirstName = '';

  String BlinkIDResultLastName = '';

  String BlinkIDResultFullName = '';

  String BlinkIDResultLocalizedName = '';

  String BlinkIDResultAdditionalNameInformation = '';

  String BlinkIDResultAddress = '';

  String BlinkIDResultAdditionalAddressInformation = '';

  String BlinkIDResultDocumentNumber = '';

  String BlinkIDResultDocumentAdditionalNumber = '';

  String BlinkIDResultSex = '';

  String BlinkIDResultIssuingAuthority = '';

  String BlinkIDResultNationality = '';

  String BlinkIDResultDateOfBirth = '';

  int BlinkIDResultAge = 0;

  String BlinkIDResultDateOfIssue = '';

  String BlinkIDResultDateOfExpiry = '';

  bool BlinkIDResultDateOfExpiryPermanent = false;

  String BlinkIDResultMaritalStatus = '';

  String BlinkIDResultPersonalIdNumber = '';

  String BlinkIDResultProfession = '';

  String BlinkIDResultRace = '';

  String BlinkIDResultReligion = '';

  String BlinkIDResultResidentialStatus = '';
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
