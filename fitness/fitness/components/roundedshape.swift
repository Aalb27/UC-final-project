//
//  roundedshape.swift
//  fitness
//
//  Created by Abdulaziz Albalool on 26/09/2022.
//

import SwiftUI
struct Roundedsnape: Shape {
    var corners: UIRectCorner
    
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 100, height: 100))
        
        
        return Path(path.cgPath) }
}
