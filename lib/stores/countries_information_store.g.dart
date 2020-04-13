// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_information_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountriesInformationStore on _CountriesInformationStore, Store {
  final _$countriesInformationAtom =
      Atom(name: '_CountriesInformationStore.countriesInformation');

  @override
  List<CountryInformationDao> get countriesInformation {
    _$countriesInformationAtom.context
        .enforceReadPolicy(_$countriesInformationAtom);
    _$countriesInformationAtom.reportObserved();
    return super.countriesInformation;
  }

  @override
  set countriesInformation(List<CountryInformationDao> value) {
    _$countriesInformationAtom.context.conditionallyRunInAction(() {
      super.countriesInformation = value;
      _$countriesInformationAtom.reportChanged();
    }, _$countriesInformationAtom,
        name: '${_$countriesInformationAtom.name}_set');
  }

  final _$statusActionAtom =
      Atom(name: '_CountriesInformationStore.statusAction');

  @override
  StatusAction get statusAction {
    _$statusActionAtom.context.enforceReadPolicy(_$statusActionAtom);
    _$statusActionAtom.reportObserved();
    return super.statusAction;
  }

  @override
  set statusAction(StatusAction value) {
    _$statusActionAtom.context.conditionallyRunInAction(() {
      super.statusAction = value;
      _$statusActionAtom.reportChanged();
    }, _$statusActionAtom, name: '${_$statusActionAtom.name}_set');
  }

  final _$_CountriesInformationStoreActionController =
      ActionController(name: '_CountriesInformationStore');

  @override
  dynamic loadCountriesInformation() {
    final _$actionInfo =
        _$_CountriesInformationStoreActionController.startAction();
    try {
      return super.loadCountriesInformation();
    } finally {
      _$_CountriesInformationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'countriesInformation: ${countriesInformation.toString()},statusAction: ${statusAction.toString()}';
    return '{$string}';
  }
}
