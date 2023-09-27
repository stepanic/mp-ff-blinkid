import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hrText = '',
  }) =>
      [enText, hrText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'qckk2848': {
      'en': 'BlinkID FF v2023.09.27',
      'hr': 'BlinkID FF',
    },
    'djzk7d6g': {
      'en': 'First name from scan: ',
      'hr': '',
    },
    '9fhvzh9s': {
      'en':
          'NOTE: to display more result fields, duplicate the previous row with a specific result field key.',
      'hr': '',
    },
    '3iarb8v8': {
      'en': 'Home',
      'hr': 'Naslovnica',
    },
  },
  // Playground
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
  // DpDemo1
  {
    '734wo8md': {
      'en': 'dp 5',
      'hr': '',
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
    '4a6qybp7': {
      'en': '',
      'hr': '',
    },
    'sgzaxi7i': {
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
    '8xnf5pfd': {
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
