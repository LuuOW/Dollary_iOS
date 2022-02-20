//
//  ContentView.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 15/10/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var currencyViewModel = CurrencyViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(currencyViewModel.title)
                Text(String(currencyViewModel.dollarPrice))
                Text(String(currencyViewModel.euroPrice))
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


