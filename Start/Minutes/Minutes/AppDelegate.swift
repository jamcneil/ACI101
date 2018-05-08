import UIKit
import AppCenter
import AppCenterDistribute
import AppCenterCrashes
import AppCenterAnalytics
import AppCenterPush

@UIApplicationMain
//70163df7-0c45-4cb4-83de-0a47eb02456a
class AppDelegate: UIResponder, UIApplicationDelegate
{
    static var entries: FileEntryStore = FileEntryStore()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        MSAppCenter.start("70163df7-0c45-4cb4-83de-0a47eb02456a", withServices:[MSDistribute.self, MSCrashes.self,MSAnalytics.self, MSPush.self])
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}
