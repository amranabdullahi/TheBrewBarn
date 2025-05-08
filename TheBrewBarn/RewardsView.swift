//
//  RewardsView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 1/16/25.
//

import SwiftUI

struct RewardsView: View {
    @State var userPoints: Int = 35
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("🎉 Your Rewards")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.brown)
                
                
                    .frame(maxWidth: .infinity)
                    .padding()
                
                VStack {
                    Text("Your Points")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text("\(userPoints)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("🎁 Earn Points")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    
                    RewardItemView(title: "Purchase a product", points: "+2 Points")
                    RewardItemView(title: "Sign up as a member", points: "+15 Points")
                    RewardItemView(title: "Celebrate a Birthday", points: "+50 Points")
                    
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Redeem Rewards")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    
                    RewardItemView(title: "Daily Rewards", points: "10 Points = 5% Off")
                    RewardItemView(title: "Large Order Discount", points: "100 Points = $10 Off")
                    RewardItemView(title: "Valentine's Day Special", points: "1 Point = 10% Off")
                    
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Available Coupons")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    CouponView(title: "Redeem 20 Points", discount: "$15 Off", available: userPoints >= 20)
                    CouponView(title: "Redeem 50 Points", discount: "$7 Off", available: userPoints >= 50)
                }
                
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            }
            
            .padding()
        }
    }
}

#Preview {
    RewardsView()
}
