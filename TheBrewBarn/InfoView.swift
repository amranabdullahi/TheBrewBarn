//
//  InfoView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 1/13/25.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack {
            Image("infobg")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                NavigationLink(destination: AboutView()) {
                    Text("About Us")
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.brown)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ContactView()) {
                    Text("Contact Us")
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.brown)
                        .cornerRadius(10)
                    
                }
            }
            
            
            .padding()
            .navigationTitle("Info")
            .foregroundColor(.white)
        }
        
    }
}

#Preview {
    InfoView()
}
