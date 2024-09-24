import 'package:connectivity_plus/connectivity_plus.dart';
import 'connectivity_service.dart';

class ConnectivityServiceImpl implements ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  @override
  Future<bool> get isConnected async {
    var result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
}
