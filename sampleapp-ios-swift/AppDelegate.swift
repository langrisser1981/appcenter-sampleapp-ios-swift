
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import AppCenterPush

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        MSAppCenter.setLogLevel(.verbose)
        
        MSAppCenter.start("407a7357-7de1-4f64-8325-2b3a6b0c068a", withServices: [
            MSAnalytics.self,
            MSCrashes.self,
            MSPush.self,
        ])
        
        return true
    }
}
