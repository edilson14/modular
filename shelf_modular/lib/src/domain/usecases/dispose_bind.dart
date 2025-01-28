import 'package:result_dart/result_dart.dart';
import 'package:shelf_modular/src/domain/services/bind_service.dart';

abstract class DisposeBind {
  Result<bool> call<T extends Object>();
}

class DisposeBindImpl implements DisposeBind {
  final BindService bindService;

  DisposeBindImpl(this.bindService);

  @override
  Result<bool> call<T extends Object>() {
    return bindService.disposeBind<T>();
  }
}
