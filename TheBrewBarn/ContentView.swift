//
//  ContentView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 12/16/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("contentbg")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    
                   
                    
                    Spacer()
                    
                        
                        .toolbar {
                            ToolbarItemGroup(placement: .navigationBarLeading) {
                                NavigationLink(destination: SettingsView()) {
                                    Image(systemName: "gear")
                                        .foregroundColor(.white)
                                        .underline()
                                    
                                }
                                NavigationLink(destination: MenuView()) {
                                    Text("Menu")
                                        .foregroundColor(.white)
                                        .underline()
                                   
                                                            
                                }
                                NavigationLink(destination: HoursAndLocationView()) {
                                    Text("Hours & Location")
                                        .foregroundColor(.white)
                                        .underline()
                                   
                                }
                                
                                
                                NavigationLink(destination: MerchView()) {
                                    Text("Merch")
                                        .foregroundColor(.white)
                                        .underline()
                                    
                                }
                                NavigationLink(destination: InfoView()) {
                                    Text("Info")
                                        .foregroundColor(.white)
                                        .underline()
                                      
                                }

                            }
                        }
                        .padding()
                       
                }
            }
        }
    }
}

#Preview {
    ContentView()
    LoginView(isLoggedIn: .constant(false))
}
