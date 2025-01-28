import 'package:result_dart/result_dart.dart';

abstract class BindService {
  Result<T> getBind<T extends Object>();
  Result<bool> disposeBind<T extends Object>();
}
