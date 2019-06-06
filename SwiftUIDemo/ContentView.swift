//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Taylor Smith on 6/5/19.
//  Copyright © 2019 Taylor Smith. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            //Map
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            // Image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            //Text
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                            Spacer()
                            Text("California")
                                .font(.subheadline)
                        }
                        }.padding()
            
            //Spacer
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
