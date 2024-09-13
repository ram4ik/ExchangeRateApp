//
//  ContentView.swift
//  ExchangeRateApp
//
//  Created by test on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var vm = ViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.validateOutput(), id: \.self) { key in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(vm.emojiFlag(key))
                                .font(.system(size: 50))
                            
                            Text(vm.countryName(currencyCode: key) ?? key)
                        }
                        
                        Spacer()
                        
                        Text(vm.formatRateForLocale(for: key))
                            .font(.largeTitle)
                            .bold()
                            .shadow(color: .secondary, radius: 3)
                    }
                    
                }
                .padding(7)
                .background(Color.gray.opacity(0.25), in: RoundedRectangle(cornerRadius: 10))
            }
            .navigationTitle("Exchange Rates: \(vm.formatRateForLocale(for: "EUR"))")
        }
    }
}

#Preview {
    ContentView()
}
