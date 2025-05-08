//
//  MenuItemView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/16/24.
//

import SwiftUI

struct MenuItemView: View {
    let imageName: String
    let name: String
    let description: String
    let price: String

    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(price)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    MenuItemView(imageName: "", name: "", description: "", price: "")
}
