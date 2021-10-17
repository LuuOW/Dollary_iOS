//
//  APIService.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 16/10/2021.
//

import Foundation

class APIService :  NSObject {
    
    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetCurrencyData(completion : @escaping (Currency) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let currencyData = try! jsonDecoder.decode(Currency.self, from: data)
                    completion(currencyData)
            }
        }.resume()
    }
}
