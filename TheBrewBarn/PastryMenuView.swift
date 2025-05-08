//
//  PastryMenuView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/16/24.
//

import SwiftUI

struct PastryMenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                MenuItemView(imageName: "croissant", name: "Chocolate Croissant", description: "Flaky, buttery croissant filled with rich, melted chocolate.", price: "2.50")
                MenuItemView(imageName: "bcroissant", name: "Butter Croissant", description: "Light, flaky, and buttery with a golden crisp crust", price: "$2.00")
                MenuItemView(imageName: "bagel", name: "Bagel", description: "Warm and chewy with a golden, slightly crispy crust.", price: "3.00")
                MenuItemView(imageName: "danish", name: "Raspberry Almond Danish", description: "A delightful twirl of tart raspberries and almond sweet cream.", price: "5.50")
                MenuItemView(imageName: "eggcheese", name: "Egg & Cheese Sandwhich", description: "Fluffy eggs and melted cheddar on your choice of toasted bread, croissant, or bagel.", price: "4.00")
                MenuItemView(imageName: "cinnamon", name: "Cinnamon Roll", description: "Warm, fluffy cinnamon roll topped with creamy icing and a touch of sweetness.", price: "3.50")
                MenuItemView(imageName: "cchip", name: "Chocolate Chip Cookie", description: "A warm, buttery cookie loaded with rich, melty chocolate chips", price: "2.00")
                MenuItemView(imageName: "chipmuffin", name: "Chooclate Chip Muffin", description: "A soft, fluffy muffin packed with rich, melty chocolate chips", price: "$2.50")
                MenuItemView(imageName: "bluemuffin", name: "Blueberry Muffin", description: "A soft, buttery muffin bursting with juicy blueberries and a hint of vanilla", price: "2.50")
                MenuItemView(imageName: "glazed", name: "Glazed Donut", description: " Soft and fluffy donut with a sweet glossy glaz", price: "3.00")
                MenuItemView(imageName: "sdonut", name: "Strawberry Donut", description: "Fluffy and fruity with a sweet strawberry glaze", price: "$3.00")
            }
            .padding()
        }
        .navigationTitle("Pastry Menu")
    }
}


#Preview {
    PastryMenuView()
}
