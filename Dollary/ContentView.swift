//
//  ContentView.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 15/10/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var currencyViewModel = CurrencyViewModel()
    @State private var username: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text(currencyViewModel.title)
                Text(String(currencyViewModel.dollarPrice))
                Text(String(currencyViewModel.euroPrice))
                TextField("Ingrese el precio del producto", text: $username)
                    .fixedSize()
                    .border(.secondary)
                Button("Calculate", action: currencyViewModel.calculateTaxes)
                    .buttonStyle(.bordered)
            }
            .navigationTitle("Dollary MVVM")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}


