//
//  WinterMenuView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/16/24.
//

import SwiftUI

struct WinterMenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                MenuItemView(imageName: "pephotchoco", name: "Peppermint Hot Chocolate", description: "Rich hot chocolate with peppermint syrup and whipped cream.", price: "4.50")
                MenuItemView(imageName: "gingerbread", name: "Gingerbread Latte", description: "A cozy gingerbread-flavored latte with hints of cinnamon and carame.", price: "5.00")
                MenuItemView(imageName: "tira", name: "Tiramisu", description: "Layered coffee-soaked sponge, mascarpone cream, and cocoa dusting.", price: "6.50")
            }
            .padding()
        }
        .navigationTitle("Winter Menu")
    }
}

#Preview {
    WinterMenuView()
}
