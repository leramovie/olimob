//
//  SuccessRequestViewController.swift
//  olimobLera
//
//  Created by Valery Shel on 17.01.2020.
//  Copyright © 2020 Parakluence. All rights reserved.
//

import UIKit

class SuccessRequestViewController: UIViewController {

    var responseText: String!
    var statusText: String!
    var promo_code: String?
    let helpFunc = HelpFunc()

    @IBOutlet weak var requestTextLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var promoCodeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helpFunc.requestToServer()
        
        DispatchQueue.main.async {
        
            guard let requestTextLabel = self.requestTextLabel else {return}
            requestTextLabel.text = self.self.responseText
        
            guard let statusText = self.statusText else {return}
            self.statusLabel.text = statusText
        
            guard let promoCodeLabel = self.promoCodeLabel else {return}
            promoCodeLabel.text = self.promo_code
            self.view.reloadInputViews()

        }
    }

}
