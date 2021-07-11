//
//  Stock.swift
//  App_Guideline
//
//  Created by 최승원 on 2021/07/11.
//

import Foundation

// Decodable 이용시 이름이 같은 json data 자동 parsing
struct StockResult: Decodable {
    var items: [Stock]
      
    // Json data 의 이름과 다를 경우 unrapping 후 처리
    enum CodingKeys: String, CodingKey {
        case items = "bestMatches"
    }
}

struct Stock: Decodable {
    var symbol: String?
    var name: String?
    var type: String?
    var currency: String?
    
    //
    enum CodingKeys: String, CodingKey {
        case symbol = "1. symbol"
        case name =  "2. name"
        case type = "3. type"
        case currency = "8. currency"
    }
}
//
//{
//    "bestMatches": [
//        {
//            "1. symbol": "TSCO.LON",
//            "2. name": "Tesco PLC",
//            "3. type": "Equity",
//            "4. region": "United Kingdom",
//            "5. marketOpen": "08:00",
//            "6. marketClose": "16:30",
//            "7. timezone": "UTC+01",
//            "8. currency": "GBX",
//            "9. matchScore": "0.7273"
//        },
//        {
//            "1. symbol": "TSCDF",
//            "2. name": "Tesco plc",
//            "3. type": "Equity",
//            "4. region": "United States",
//            "5. marketOpen": "09:30",
//            "6. marketClose": "16:00",
//            "7. timezone": "UTC-04",
//            "8. currency": "USD",
//            "9. matchScore": "0.7143"
//        },
//        {
//            "1. symbol": "TSCDY",
//            "2. name": "Tesco plc",
//            "3. type": "Equity",
//            "4. region": "United States",
//            "5. marketOpen": "09:30",
//            "6. marketClose": "16:00",
//            "7. timezone": "UTC-04",
//            "8. currency": "USD",
//            "9. matchScore": "0.7143"
//        }
//    ]
//}
