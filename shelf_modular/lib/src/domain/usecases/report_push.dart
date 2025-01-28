import 'package:modular_core/modular_core.dart';
import 'package:result_dart/result_dart.dart';
import 'package:shelf_modular/src/domain/services/route_service.dart';

abstract class ReportPush {
  Result<Unit> call(ModularRoute route);
}

class ReportPushImpl implements ReportPush {
  final RouteService service;

  ReportPushImpl(this.service);

  @override
  Result<Unit> call(ModularRoute route) {
    return service.reportPush(route);
  }
}
