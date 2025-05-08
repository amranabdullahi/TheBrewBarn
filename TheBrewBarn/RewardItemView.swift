//
//  RewardItemView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 2/13/25.
//

import SwiftUI

struct RewardItemView: View {
    var title: String
    var points: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .fontWeight(.medium)
            Spacer()
            Text(points)
                .foregroundColor(.brown)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 1)
    }
}

#Preview {
    RewardItemView(title: "", points: "")
}
