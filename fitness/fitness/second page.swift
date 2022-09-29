//
//  second page.swift
//  fitness
//
//  Created by Abdulaziz Albalool on 25/09/2022.
//

import SwiftUI

struct second_page: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var mobilenumber = ""
    var body: some View {
        VStack{
            
            VStack(alignment: .leading){
                HStack { Spacer()}
                Text ("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text( "Register here")
                    .font(.largeTitle)
                
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Roundedsnape(corners: [.bottomRight]))
            
            VStack(spacing:30){
                custominputfield(imageName: "envelope", placeholderText: "Email", text: $email)
                
                    .padding(.horizontal, 32)
                    .padding(.top, 44)
                
                custominputfield(imageName: "lock", placeholderText: "Password", text: $password)
                
                    .padding(.horizontal, 32)
                    .padding(.top, 44)
                
                custominputfield(imageName: "person", placeholderText: "Fullname", text: $fullname)
                
                    .padding(.horizontal, 32)
                    .padding(.top, 44)
                
                custominputfield(imageName: "phone", placeholderText: "Mobilenumber", text: $mobilenumber)
                
                    .padding(.horizontal, 32)
                    .padding(.top, 44)
                
                
                
                NavigationLink(destination: weight_page()){ Text("Sign up")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(Rectangle())
                }
                Spacer()
                
                
                
            }
        }.ignoresSafeArea()
            //.navigationBarTitle((Text("register page")))
        
        
        
    }
    }

struct second_page_Previews: PreviewProvider {
    static var previews: some View {
        second_page()
    }
}
