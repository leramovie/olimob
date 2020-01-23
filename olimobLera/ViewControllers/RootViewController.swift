//
//  ViewController.swift
//  olimobLera
//
//  Created by Valery Shel on 17.01.2020.
//  Copyright © 2020 Parakluence. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FacebookCore

class RootViewController: UIViewController {
    
    let helpFunc = HelpFunc()
    var deeplinkStatus = (UIApplication.shared.delegate as! AppDelegate).deeplinkGet
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func openDummyScreen(){
            let dv = self.storyboard?.instantiateViewController(withIdentifier: "dummyVC") as? DummyViewController
            self.navigationController?.pushViewController(dv!, animated: true)
       }
    
    public func openSuccessScreen(){
            let sv = self.storyboard?.instantiateViewController(withIdentifier: "successRequestVC") as? SuccessRequestViewController
            self.navigationController?.pushViewController(sv!, animated: true)

        }

    
    
    func routerScreen() {
        
        if deeplinkStatus == true {
          openSuccessScreen()
        }else if deeplinkStatus == false{
          openDummyScreen()
            print("We didn't get deeplink or deeplinkStatus = nil")
        }
    }
    
    
    @IBAction func pushButton(_ sender: Any) {
        helpFunc.requestToServer()
        routerScreen()
        
    }

}
