import Flutter
import UIKit

import TestClass.h //How to import a set C classes?

public class SwiftTestPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "test_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftTestPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    //Call C Class here
    //TestClass.printHellWorld()
    
    result("iOS " + UIDevice.current.systemVersion)
  }
    
    
}
