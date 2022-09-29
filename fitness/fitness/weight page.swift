//
//  weight page.swift
//  fitness
//
//  Created by Abdulaziz Albalool on 29/09/2022.
//

import SwiftUI

struct weight_page: View {
    @State var weight = ""
    @State var height = ""
    var body: some View {
        ZStack{
            VStack(spacing:40){
                
                
                Spacer(minLength: 40)
                
                custominputfield(imageName: "scalemass", placeholderText: "Enter your Height", text: $height)
                  
                custominputfield(imageName: "scalemass.fill", placeholderText: "Enter your Weight", text: $weight)
                 
                
                NavigationLink(destination: ContentView()){ Text("Go")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(Circle())
                        .frame(width: 200, height: 200)
                }
                Spacer(minLength: 50)
            } .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
                .ignoresSafeArea()
        } .background(Color.blue.opacity(0.5))
    }
}

struct weight_page_Previews: PreviewProvider {
    static var previews: some View {
        weight_page()
    }
}
