import 'package:covid19_information_app/model/global_information_dao.dart';
import 'package:covid19_information_app/service/api_service.dart';
import 'package:covid19_information_app/util/status_action.dart';
import 'package:mobx/mobx.dart';

part 'global_information_store.g.dart';

class GlobalInformationStore = _GlobalInformationStore
    with _$GlobalInformationStore;

abstract class _GlobalInformationStore with Store {
  @observable
  GlobalInformationDTO globalInformation;

  @observable
  StatusAction statusAction;

  @action
  loadGlobalInformation() {
    ApiService.fetchGlobalInformation().then((onValue) => {
          globalInformation = onValue,
          statusAction = StatusAction(
              message: "Error on loading api",
              statusOperation: StatusOperation.FAIL)
        });
  }
}
