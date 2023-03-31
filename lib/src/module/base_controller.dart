import 'package:template/src_exports.dart';

class BaseController extends GetxController {
  Status _status = Status.IDEL;
  bool get isLoading => _status == Status.LOADING;
  bool get isSuccess => _status == Status.SCUSSESS || _status == Status.IDEL;
  Widget view = const SizedBox();

  void onUpdate({
    Status status = Status.IDEL,
    VoidCallback? callback,
    String message = "",
    String description = "",
  }) {
    if (status == Status.LOADING) {
      view = const LoaderView();
    } else if (status == Status.FAILED) {
      view = ErrorView(
        callback: callback,
        message: message,
        description: description,
      );
    } else {
      view = const SizedBox();
    }
    _status = status;
    update();
  }

  void onError(
    dynamic error,
    VoidCallback? callback,
  ) {
    onUpdate(
        status: Status.FAILED, callback: callback, message: "Something wrong");
    onSendError(error, StackTrace.current);
    logger.e("onError", error, StackTrace.current);
  }

  void onSendError(dynamic error, StackTrace trace) {
    //:TODO add crashAnalytica code
  }
}
