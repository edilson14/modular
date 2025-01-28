import 'package:result_dart/result_dart.dart';
import 'package:shelf_modular/src/domain/services/module_service.dart';

abstract class FinishModule {
  Result<Unit> call();
}

class FinishModuleImpl implements FinishModule {
  final ModuleService moduleService;

  FinishModuleImpl(this.moduleService);

  @override
  Result<Unit> call() {
    return moduleService.finish();
  }
}
