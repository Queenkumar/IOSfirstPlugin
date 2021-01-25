//
//  MarketingUser.swift
//  IOSFirstPlugin
//
//  Created by Queenzend Web Solution on 23/11/20.
//

import Foundation
import Alamofire
import SwiftyJSON

public class MarketingUser {
    
    public init(){}
    
    public func printLog() {
        print("Hello world")
    }
    
    public func privateMethod() {
        print("private")
    }
    public func UserLoginData(device_id: String,email: String,source: String,company_token: String,password: String){
          print("Call UserLoginData function");
                               
           let url = "https://k2key.in/marketing_plateform_pankaj/Webservice/newAppUserLogin";
           
           print("Get params");
           print(device_id);
           print(email);
           print(source);
           print(company_token);
           print(password);
           
       let params = ["device_id": device_id,
                     "email": email,
                     "password": password,
                     "source": source,
                     "company_token": company_token]
           
           print(params);
                               Alamofire.request(URL.init(string: url)!, method: .post, parameters: params, encoding: JSONEncoding       .default,headers: [:])
           
                                   .responseData { response in
                                      guard let data = response.data else { return }
                                      print(response.result)
                                      print(String(data: data, encoding: .utf8)!)
                                      let json = JSON(data)
                                       print(json)
                                         let res_data = json["res_data"]
                                         print(res_data)

                                         let res_code = json["res_code"]
                                         print(res_code)
                                      if(res_code == 1){
                                                      return
                                                  }
                                                  else{
                                                  }
                               }
       }
}
