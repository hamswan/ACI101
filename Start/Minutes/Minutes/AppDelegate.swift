import UIKit
//AppSecret be547fd4-1d2f-472c-a6c6-285abfb7cc65
import AppCenter
import AppCenterDistribute
import AppCenterCrashes
import AppCenterAnalytics
import AppCenterPush

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    static var entries: FileEntryStore = FileEntryStore()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        MSAppCenter.start("be547fd4-1d2f-472c-a6c6-285abfb7cc65", withServices: [MSDistribute.self, MSCrashes.self, MSAnalytics.self, MSPush.self] )

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
