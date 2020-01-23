//
//  HelpFunctions.swift
//  olimobLera
//
//  Created by Valery Shel on 23.01.2020.
//  Copyright © 2020 Parakluence. All rights reserved.
//

import Foundation

class HelpFunc {
    
    var responseDecoded: String = ""
    var statusCode: Int = 0
    var promo_code: String = ""


//Делаю запрос на сервер. Получаю декодированный параметр
func requestToServer() {
       
       let url = URL(string: "https://frucocktail.com/rest/letaf?app=com.dd.dd")
       guard let downloadURL = url else {return}
       let session = URLSession.shared
          session.dataTask(with: downloadURL) { data, response, error in
          guard let data = data else {return}
              print(data)
            
               let httpResponse = response as? HTTPURLResponse
                self.statusCode = httpResponse!.statusCode
               DispatchQueue.main.async(execute: {
                self.responseDecoded = String(data: data, encoding: .utf8)!
                   
               })
           }.resume()
           
       return
       }

}
