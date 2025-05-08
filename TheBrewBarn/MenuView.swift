//
//  MenuView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/16/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
//            .background(Image("menubg"))
//                .resizable()
//                .scaledToFill()
//                .frame(minWidth: 0)
//                .edgesIgnoringSafeArea(.all)
            Image("menubg")
                .resizable()
              .scaledToFill()
              .ignoresSafeArea()

//            VStack {
                List {
                    NavigationLink(destination: DrinksMenuView()) {
                        Text("Drinks Menu")
                        
                    }
                    NavigationLink(destination: PastryMenuView()) {
                        Text("Pastry Menu")
                    }
                    
                    NavigationLink(destination: WinterMenuView()) {
                        Text("Winter Menu")
                    }
                    
                }
                .scrollContentBackground(.hidden)
            //}
                    //.padding()
//            Color.green
                }
                
                
                
                .navigationTitle("Our Menus")
                .foregroundColor(.black)
                .background(Color.white.opacity(0.5))
        
        NavigationLink(destination: RewardsView()) {
            Text("CHECK OUT OUR REWARDS PROGRAM")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                
        }
    
        
        }
    }

    #Preview {
        MenuView()
    }


