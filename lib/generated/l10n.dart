// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class Strings {
  Strings();
  
  static Strings current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      Strings.current = Strings();
      
      return Strings.current;
    });
  } 

  static Strings of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Результат поиска`
  String get search_result {
    return Intl.message(
      'Результат поиска',
      name: 'search_result',
      desc: '',
      args: [],
    );
  }

  /// `По запросу`
  String get by_request {
    return Intl.message(
      'По запросу',
      name: 'by_request',
      desc: '',
      args: [],
    );
  }

  /// `Найдено`
  String get founded {
    return Intl.message(
      'Найдено',
      name: 'founded',
      desc: '',
      args: [],
    );
  }

  /// `Обновлено`
  String get updated {
    return Intl.message(
      'Обновлено',
      name: 'updated',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}