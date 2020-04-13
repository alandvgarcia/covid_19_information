// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_information_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalInformationStore on _GlobalInformationStore, Store {
  final _$globalInformationAtom =
      Atom(name: '_GlobalInformationStore.globalInformation');

  @override
  GlobalInformationDTO get globalInformation {
    _$globalInformationAtom.context.enforceReadPolicy(_$globalInformationAtom);
    _$globalInformationAtom.reportObserved();
    return super.globalInformation;
  }

  @override
  set globalInformation(GlobalInformationDTO value) {
    _$globalInformationAtom.context.conditionallyRunInAction(() {
      super.globalInformation = value;
      _$globalInformationAtom.reportChanged();
    }, _$globalInformationAtom, name: '${_$globalInformationAtom.name}_set');
  }

  final _$statusActionAtom = Atom(name: '_GlobalInformationStore.statusAction');

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

  final _$_GlobalInformationStoreActionController =
      ActionController(name: '_GlobalInformationStore');

  @override
  dynamic loadGlobalInformation() {
    final _$actionInfo =
        _$_GlobalInformationStoreActionController.startAction();
    try {
      return super.loadGlobalInformation();
    } finally {
      _$_GlobalInformationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'globalInformation: ${globalInformation.toString()},statusAction: ${statusAction.toString()}';
    return '{$string}';
  }
}
