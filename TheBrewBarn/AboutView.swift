//
//  AboutView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/20/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Image("aboutbg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("About Us")
                    .font(.custom("Savoye Let", size: 40))
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Text("""
                     Welcome to The Brew Barn, your cozy spot for great coffee, tea, and delicious pastries right here in Columbus, Ohio! Whether you need a strong cup to start your day, a non-coffee option to sip on, or a fresh-baked treat to satisfy your sweet tooth, we've got you covered.
                     
                     We're all about quality ingredients, good vibes, and making sure every visit feels like a little break from the every day hustle. Our coffee is brewed with care, our non-coffee drinks are just as thoughtfully crafted, and our pastries? Always fresh and worth every bite.
                     
                     At The Brew Barn, we love being part of the community and creating a space where everyone feels welcome. So come in, grab your favorite drink awhile! We'll have something warm (or iced) waiting for you.
                     """)
                .font(.system(size: 16))
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
            
            .frame(maxWidth: 350)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
        }
    }
}

#Preview {
    AboutView()
}

