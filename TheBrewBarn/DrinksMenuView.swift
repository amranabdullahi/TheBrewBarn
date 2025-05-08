//
//  DrinksMenuView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/16/24.
//

import SwiftUI

struct DrinksMenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Coffee")
                    .font(.title2)
                    .fontWeight(.bold)
                
            
                MenuItemView(imageName: "coffee", name: "Latte", description: "Smooth and creamy espresso-based drink.", price: "4.50")
                MenuItemView(imageName: "coldbrew", name: "Cold Brew", description: "Slow-steeped, smooth, and ice-cold", price: "3.50")
                MenuItemView(imageName: "cappu", name: "Cappucino", description: "Rich espresso with steamed milk and foam.", price: "4.50")
                MenuItemView(imageName: "flat", name: "Flat White", description: "Velvety microfoam with a shot of espresso.", price: "4.50")
                MenuItemView(imageName: "esp", name: "Espresso", description: "Bold and concentrated coffee shot.", price: "3.50")
                MenuItemView(imageName: "macchi", name: "Macchiato", description: "Espresso with a dash of foam", price: "4.00")
 
                Text("Non-Coffee")
                    .font(.title2)
                    .fontWeight(.bold)
                MenuItemView(imageName: "chai", name: "Chai Tea", description: "Spiced tea blend with cinnamon, cloves, andcardamom.", price: "4.00")
                MenuItemView(imageName: "match", name: "Matcha Tea", description: "Creamy, green tea with earthy, sweet notes.", price: "4.00")
                MenuItemView(imageName: "htea", name: "Herbal Tea", description: "Soothing herbal tea with chamomile mint and lavender", price: "3.50")
                MenuItemView(imageName: "hotchoco", name: "Hot Chocolate", description: "Warm and rich with whipped cream.", price: "3.00")
                MenuItemView(imageName: "lemon", name: "Lemonade", description: "Refreshing and tart.", price: "2.50")
                MenuItemView(imageName: "strawberry", name: "Strawberry Lemonade", description: "Fresh with a juicy berries and tangy lemon", price: "2.50")
            }
            .padding()
        }
        
        .navigationTitle("Drinks Menu")
    }
}


#Preview {
    DrinksMenuView()
}
