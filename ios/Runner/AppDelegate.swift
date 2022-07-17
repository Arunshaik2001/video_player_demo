import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      weak var registrar = self.registrar(forPlugin: "plugin-name")

              let factory = FLNativeViewFactory(messenger: registrar!.messenger())
              self.register(
                  factory,
                  withId: "video_player_view")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
