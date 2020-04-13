import 'package:covid19_information_app/model/country_information_dao.dart';
import 'package:covid19_information_app/service/api_service.dart';
import 'package:covid19_information_app/util/status_action.dart';
import 'package:mobx/mobx.dart';

part 'countries_information_store.g.dart';

class CountriesInformationStore = _CountriesInformationStore
    with _$CountriesInformationStore;

abstract class _CountriesInformationStore with Store {
  @observable
  List<CountryInformationDao> countriesInformation = ObservableList.of([]);

  @observable
  StatusAction statusAction;

  @action
  loadCountriesInformation() {
    ApiService.fetchCountriesInformation().then(
            (onValue) => {
              countriesInformation = onValue
        });
  }
}

