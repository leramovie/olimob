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
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var deeplinkStatus = self.appDelegate.deeplinkGet
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func routerScreen() {
        
        if deeplinkStatus == true {
            //requestToServer()
            openSuccessScreen()
        }else {
            openDummyScreen()
        }
    }
    
    public func openDummyScreen(){
            let dv = self.storyboard?.instantiateViewController(withIdentifier: "dummyVC") as? DummyViewController
            self.navigationController?.pushViewController(dv!, animated: true)
       }
    
    public func openSuccessScreen(){
            let sv = self.storyboard?.instantiateViewController(withIdentifier: "successRequestVC") as? SuccessRequestViewController
            self.navigationController?.pushViewController(sv!, animated: true)

        }
    
    

    @IBAction func pushButton(_ sender: Any) {
        helpFunc.requestToServer()
        routerScreen()
        
    }
    
    
    
    func handleDeeplinkJSON() {

//        let url = URL(string: "https://images-api.nasa.gov/search?q=space&media_type=image&year_start=2019&year_end=2019")
//        guard let downloadURL = url else {return}
//        let session = URLSession.shared
//        session.dataTask(with: downloadURL) { data, response, error in
//            guard let data = data else {return}
//             do{
//                let myJSON = try JSON(data: data)
//
//                print(myJSON)
//                let items = myJSON["collection"]["items"]
//
//                    for item in items.arrayValue {
//                        let title = item["data"][0]["title"].stringValue
//                        let nasa_id = item["data"][0]["nasa_id"].stringValue
//                        let description = item["data"][0]["description"].stringValue
//                        let href = item["links"][0]["href"].stringValue
//                        var date_created = item["data"][0]["date_created"].stringValue
//
//                        let dateFormatter = DateFormatter()
//                        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
//                        var date = dateFormatter.date(from: date_created)
//
//                        let uiDateFormatter = DateFormatter()
//                        uiDateFormatter.dateFormat = "dd MMM, yyyy"
//                        let uiDate = uiDateFormatter.string(from: date!)
//
//                        self.itemsArr.append(NasaData(nasa_id: nasa_id, title: title, date_created: uiDate, media_type: "", href: href, description: description, date_created_sort: date!))
//            }
//
//            self.itemsArr.sort(by: { $0.date_created_sort! > $1.date_created_sort! } )
//
//
//            DispatchQueue.main.async {
//                self.tableView.reloadData()
//            }
//                print(self.itemsArr)
//                }catch{
//                    print(error)
//                    }
//                }.resume()
          }
    
    
    



    
}


