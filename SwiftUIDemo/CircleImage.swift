//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Taylor Smith on 6/5/19.
//  Copyright © 2019 Taylor Smith. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("turtleRock")
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
        .shadow(radius: 10)
        
        
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
