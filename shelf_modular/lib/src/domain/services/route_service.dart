import 'package:modular_core/modular_core.dart';
import 'package:result_dart/result_dart.dart';
import 'package:shelf_modular/src/domain/dtos/route_dto.dart';

abstract class RouteService {
  AsyncResult<ModularRoute> getRoute(RouteParmsDTO params);
  Result<ModularArguments> getArguments();
  Result<Unit> reportPush(ModularRoute route);
}
