import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hr'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String? enText = '',
    String? hrText = '',
  }) =>
      [enText, hrText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'qckk2848': {
      'en': 'BlinkID FF',
      'hr': 'BlinkID FF',
    },
    'djzk7d6g': {
      'en': 'First name from scan: ',
      'hr': '',
    },
    '3iarb8v8': {
      'en': 'Home',
      'hr': 'Naslovnica',
    },
  },
  // _Playground
  {
    'm56hsx6t': {
      'en': 'iOS License',
      'hr': 'Licenca za iOS',
    },
    'gwbaxtdx': {
      'en': '<IOS_LICENSE>',
      'hr': '<IOS_LICENSE>',
    },
    'kzadkitu': {
      'en': 'Scan',
      'hr': 'Skenirati',
    },
  },
  // Miscellaneous
  {
    '4dqy3lfm': {
      'en': 'Do you want to allow camera permission?',
      'hr': 'Želite li dozvoliti pristup do kamere?',
    },
    '0kw5t187': {
      'en': '',
      'hr': '',
    },
    'h9mk5eip': {
      'en': '',
      'hr': '',
    },
    'b4xupkza': {
      'en': '',
      'hr': '',
    },
    'w7uu09dc': {
      'en': '',
      'hr': '',
    },
    'p8vf90wg': {
      'en': '',
      'hr': '',
    },
    '83t0jt8j': {
      'en': '',
      'hr': '',
    },
    'jh99syo4': {
      'en': '',
      'hr': '',
    },
    'l51cmp01': {
      'en': '',
      'hr': '',
    },
    'qu4bd64z': {
      'en': '',
      'hr': '',
    },
    'dbaygfwe': {
      'en': '',
      'hr': '',
    },
    'nopelpwo': {
      'en': '',
      'hr': '',
    },
    '5zlrkahv': {
      'en': '',
      'hr': '',
    },
    '0la6m6me': {
      'en': '',
      'hr': '',
    },
    'l87ghbf7': {
      'en': '',
      'hr': '',
    },
    'qjrta2dx': {
      'en': '',
      'hr': '',
    },
    '2jxymik9': {
      'en': '',
      'hr': '',
    },
    'kkgsfnwr': {
      'en': '',
      'hr': '',
    },
    'k4cz5820': {
      'en': '',
      'hr': '',
    },
    'zvrihq2i': {
      'en': '',
      'hr': '',
    },
    'v4b1aco2': {
      'en': '',
      'hr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
