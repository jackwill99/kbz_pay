import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_kbz_pay_method_channel.dart';

abstract class FlutterKbzPayPlatform extends PlatformInterface {
  /// Constructs a FlutterKbzPayPlatform.
  FlutterKbzPayPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterKbzPayPlatform _instance = MethodChannelFlutterKbzPay();

  /// The default instance of [FlutterKbzPayPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterKbzPay].
  static FlutterKbzPayPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterKbzPayPlatform] when
  /// they register themselves.
  static set instance(FlutterKbzPayPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
