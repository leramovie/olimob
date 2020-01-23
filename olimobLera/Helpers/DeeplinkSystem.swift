
//
//  DeeplinkSyspem.swift
//  olimobLera
//
//  Created by Valery Shel on 19.01.2020.
//  Copyright © 2020 Parakluence. All rights reserved.
//

import Foundation
import UIKit


class DeeplinkSystem {


}






//DispatchQueue.main.async {
//    if responseDecoded != "" {
//        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "successRequestVC") as? SuccessRequestViewController else {return}
//        vc.responseText = ("Response: \(responseDecoded) ")
//        vc.statusText = ("Status: \(statusCode)")
//        self.present(vc, animated:true, completion: nil)
//
//    }else{
//        guard let vc = self.storyboard?.instantiateViewController(withIdentifier:"dummyVC") as? DummyViewController else {return}
//        self.present(vc, animated:true, completion: nil)
//
//        }



//func defferedDeeplinkSystem() {
//
//    let application = UIApplication.shared
//    let secondAppPath = "olimobLera://vcroot"
//    let appUrl = URL(string: secondAppPath)!
//    let websiteUrl = URL(string: "https://frucocktail.com/rest/letaf?app=com.dd.dd")!
//    if application.canOpenURL(appUrl){
//        application.open(appUrl, options: [:], completionHandler: nil)
//    }else{
//        application.open(websiteUrl)
//    }
//}

// func application(_ app: UIApplication, open url:URL, options:[UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool{
//
//     print (url)
//     let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
//     let host  = urlComponents?.host ?? ""
//     print(host)
//     
//     if host == "successRequestVC"{
//     
//         let sb = UIStoryboard(name: "Main", bundle: .main)
//         let srVC =  sb.instantiateViewController(withIdentifier: "successRequestVC")
//         window.rootViewController = srVC
//     }
//     return true
// }
