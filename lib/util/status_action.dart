class StatusAction {
  final String message;
  final StatusOperation statusOperation;

  const StatusAction({this.message, this.statusOperation});
}

enum StatusOperation { SUCCESS, LOADING, FAIL, DONE }
