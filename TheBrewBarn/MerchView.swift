//
//  MerchView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 1/14/25.
//

import SwiftUI

struct MerchView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The Brew Barn Merchandice")
                    .font(.headline)
                    .fontWeight(.bold)
                MenuItemView(imageName: "cup", name: "Coffee Cup", description: "Stylish cup for your favorite brew.", price: "$2.00")
                MenuItemView(imageName: "club", name: "T-Shirt", description: "Comfy Brew Barn branded T-shirt", price: "$10.00")
                MenuItemView(imageName: "bag", name: "Tote Bag", description: "Eco-friendly tote for all your needs.", price: "$8.00")
                MenuItemView(imageName: "ilove", name: "I Love The Brew Barn T-Shirt", description: "Show your love for The Brew Barn with our t-shirt", price: "$12.00")
                MenuItemView(imageName: "keychain", name: "Keychain", description: "Carry a piece of us wherever you go with our keychain.", price: "$3.00")
            }
            .padding()
        }
        .navigationTitle("Merchandice")
    }
}

#Preview {
    MerchView()
}
