import 'package:result_dart/result_dart.dart';
import 'package:shelf_modular/src/domain/services/bind_service.dart';

abstract class GetBind {
  Result<T> call<T extends Object>();
}

class GetBindImpl implements GetBind {
  final BindService bindService;

  GetBindImpl(this.bindService);

  @override
  Result<T> call<T extends Object>() {
    return bindService.getBind<T>();
  }
}
