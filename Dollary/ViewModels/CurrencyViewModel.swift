//
//  CurrencyViewModel.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 16/10/2021.
//

import Foundation

class CurrencyViewModel : ObservableObject {
    @Published var title: String = ""
    @Published var dollarPrice: Float = 0.00
    @Published var euroPrice: Float = 0.00
    @Published var price: Float = 0.00
    
//    private var apiService : APIService!
//    private(set) var currencyData : Currency!
    
    init() {
        fetchCurrency()
        calculateTaxes()
    }
    
    func fetchCurrency() {
        guard let url = URL(string: "https://open.er-api.com/v6/latest/USD") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, URLResponse , error in
            guard let data = data, error == nil else {
                return
            }

            do {
                let model = try JSONDecoder().decode(Currency.self,
                                                     from: data)
                DispatchQueue.main.async {
                    self.dollarPrice = model.rates.ARS
                    self.euroPrice = model.rates.EUR
                }
            }
            catch {
                print("Error...")
            }
        }
        task.resume()
    }
    
    func calculateTaxes() {
        var totalPrice = 1 + 1
    }
    
}
