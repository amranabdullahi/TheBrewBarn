//
//  ContactView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/20/24.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ZStack {
            Image("contactbg")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("Contact Us")
//                    .font(.title)
//                
//                    .padding()
//                
//                
//                Text("Phone: (614)207-0667\n\nEmail: info@thebrewbarn.com")
//                    .font(.body)
//                    .multilineTextAlignment(.center)
//                Spacer()
//            }
//            .navigationTitle(Text("Contact Us"))
//            
        }
    }
}

#Preview {
    ContactView()
}
