//
//  BDNetworkTool.swift
//  ByteDanceDemo
//
//  Created by donglingxiao on 2018/10/16.
//  Copyright © 2018年 donglingxiao. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol BDNetworkToolProtocol {
    
    static func loadHomeNewsTitleData(completionHandler:( _ newsTitle:String) ->())
    
}

extension BDNetworkToolProtocol {
    static func loadHomeNewsTitleData(completionHandler:(_ newsTitle:String) ->()) {
        let url = BASE_URL + "/article/category/get_subscribed/v1/?"
        let params = ["device_id": device_id,
                      "iid": iid]
        Alamofire.request(url, parameters:params).responseJSON { (response) in
            guard response.result.isSuccess else { return }
            print("Response: \(String(describing: response.result.value))")
            
           
            
        }
    
    }
}

struct BDNetworkTool: BDNetworkToolProtocol {
    
    
}
