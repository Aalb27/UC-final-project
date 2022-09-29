//
//  Navigator.swift
//  fitness
//
//  Created by Abdulaziz Albalool on 24/09/2022.
//

import SwiftUI

struct Navigator: View {
    var body: some View {
        NavigationView{
            
                ZStack{
                    Image("gym-weight")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 1000, height: 900)
                        .background(Color.blue)
                    VStack(spacing : 150){
                        Text("Welcome to your fitness app")
                            .font(.title)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .background(Color.gray.opacity(0.5))
                        Text("Your five day weekly plan")
                            .font(.title)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .background(Color.gray.opacity(0.9))
                        NavigationLink(destination: second_page()) {
                        Text("Get started")
                                .font(.largeTitle)
                                .fontWeight(.thin)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .clipShape(Rectangle())
                    }
                }
            }.navigationTitle(Text("home"))
                
                
                .ignoresSafeArea()
            
        }                .accentColor(.white)
        

    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}
