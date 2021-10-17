//
//  Currency.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 16/10/2021.
//

import Foundation


struct Currency: Decodable {
    let rates: CurrencyRates
}

struct CurrencyRates: Decodable {
    let ARS: Float
    
    enum CodingKeys: String, CodingKey {
        case ARS = "ARS"
    }
    
}
