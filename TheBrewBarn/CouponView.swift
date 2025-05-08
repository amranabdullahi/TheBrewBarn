//
//  CouponView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 2/13/25.
//

import SwiftUI

struct CouponView: View {
    var title: String
    var discount: String
    var available: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.medium)
                Text(discount)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button(action: {}) {
                Text(available ? "Redeem" : "Unavailable")
                    .foregroundColor(.white)
                    .padding()
                    .background(available ? Color.brown : Color.gray)
                    .cornerRadius(8)
            }
            .disabled(!available)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 1)
    }
}

#Preview {
    CouponView(title: "", discount: "", available: true)
}
