//
//  MarketingUser.swift
//  IOSFirstPlugin
//
//  Created by Queenzend Web Solution on 23/11/20.
//

import Foundation
import Alamofire
import SwiftyJSON
import UIKit
import SwiftUI

public class MarketingUser {

//define init function:
    public init(){}
    
//define printLog function:
    public func printLog() {
        print("Hello world")
    }
    
//define privateMethod function:
    public func privateMethod() {
        print("private")
    }
    
//define save UserLoginData function:
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
           Alamofire.request(URL.init(string: url)!, method: .post, parameters: params, encoding: JSONEncoding .default,headers: [:])
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
              
               print("Login Successfully")
                    return
             }
             else{
                
              print("Login failed")
                 
             }
          }
    }
    
    //define save userTrackeventData function:
    public func userTrackeventData(user_id:Any,company_id:Any,event_name:Any,params1: Any)
           {
                print(params1)
                print("******SaveEvent call*******")
                        
                let paramsData1 = params1
                        
                print("Call EventData function");
                        
                                    let url = "https://k2key.in/marketing_plateform_pankaj/Webservice/saveEvent";
                                      
                                    let params = ["user_id": user_id,
                                                 "company_id": company_id,
                                                 "event_name": event_name,
                                                 "event_data": paramsData1] as [String : Any]
                                       print(params);
                                       Alamofire.request(URL.init(string: url)!, method: .post, parameters: params, encoding: JSONEncoding .default,headers: [:])
                                       .responseData { response in
                                          guard let data = response.data else { return }
                                          print(response.result)
                                          print(String(data: data, encoding: .utf8)!)
                                          let json = JSON(data)
                                          let res_code = json["res_code"]
                                          if(res_code == 1){
                                           print("Event data save successfully")
                                                return
                                         }
                                         else{
                                          print("Event data failed to save")
                                         }
                              }
          }
//define save UserRegistration data function:
    public func UserRegistrationData(company_token: String,user_name: String,password: String,phone_number: String,email: String,dob: String,country: String,city: String,address: String,gender: String, jobType: String,source: String,latitude: String,longitude: String,device_token:String,age:String,married_status:String,blood_group:String){
      print("Call UserLoginData function");
  let url = "https://k2key.in/marketing_plateform_pankaj/Webservice/appUserRegistrationNew";
       print("Get params for user register");
       print(company_token);
       print(user_name);
       print(email);
       print(source);
       print(device_token);
       
        let params = ["company_token": company_token,"user_name": user_name,"password": password,"phone_number": phone_number,"email": email,"dob": dob,"country": country,"city": city,"address": address,"gender": gender,"jobType": jobType,"source":source,"latitude": latitude,"longitude": longitude,"device_token": device_token,"age":age,"married_status":married_status,"blood_group":blood_group]
       print(params);
       Alamofire.request(URL.init(string: url)!, method: .post, parameters: params, encoding: JSONEncoding .default,headers: [:])
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
           print("User register successfully")
                return
         }
         else{
           print("Registration fail")
         }
      }
   }
}
