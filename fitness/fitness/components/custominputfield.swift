//
//  custominputfield.swift
//  fitness
//
//  Created by Abdulaziz Albalool on 26/09/2022.
//

import SwiftUI

struct custominputfield: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame (width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                TextField(placeholderText, text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}
struct custominputfield_Previews: PreviewProvider {
    static var previews: some View {
        custominputfield(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
