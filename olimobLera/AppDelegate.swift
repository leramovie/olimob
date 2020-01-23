//
//  AppDelegate.swift
//  olimobLera
//
//  Created by Valery Shel on 17.01.2020.
//  Copyright © 2020 Parakluence. All rights reserved.
//

import UIKit
import FacebookCore
import FBSDKCoreKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?
    lazy var deeplinkGet: Bool = true
    let rootVC = RootViewController()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window.makeKeyAndVisible()

        
        
        //Настройка для отложенного диплинкинга
        AppLinkUtility.fetchDeferredAppLink { (url, error) in
            if let error = error {
                print("Received error while fetching deferred app link %@", error)
                self.deeplinkGet = false

                
            } else {
                
                self.deeplinkGet = true

            }
            if let url = url {
                
                  print (url)
                
                if #available(iOS 10, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
            //self.rootVC.routerScreen()
        }
        return true
   }
    
    
    
//    func application(_ app: UIApplication, open url:URL, options:([UIApplication.OpenURLOptionsKey : Any]?) -> Bool) {
//        let handled = FBSDKApplicationDelegate.sharedInstance().application(app, open: url, options: options)
//        return handled
//    }
//
    //MARK: Settings for rootVC
    func application(_ app: UIApplication, open url:URL, options:[UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool{
        
        let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let host  = urlComponents?.host ?? ""
        print(host)
        
        if host == "rootVC"{
        
            let sb = UIStoryboard(name: "Main", bundle: .main)
            
            //let rootVC =  sb.instantiateViewController(withIdentifier: "rootVC") as? RootViewController
            
            //rootVC?.promo_code = urlComponents?.queryItems?.last?.value
            //window?.rootViewController = rootVC
    }
 
        return true
    }

    
    
//
//    // MARK: Universal Links
//    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Void) -> Bool {
//       if userActivity.activityType == NSUserActivityTypeBrowsingWeb {
//          if let url = userActivity.webpageURL {
//             
//          }
//       }
//       return false
//    }
    

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }
    



}

extension AppDelegate {
   static var shared: AppDelegate {
      return UIApplication.shared.delegate as! AppDelegate
   }
    var rootViewController: RootViewController {
    let window = UIWindow(frame: UIScreen.main.bounds)
    return window.rootViewController as! RootViewController
   }
}


