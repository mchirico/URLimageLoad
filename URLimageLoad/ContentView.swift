//
//  ContentView.swift
//  URLimageLoad
//
//  Created by Mike Chirico on 11/24/20.
//

import SwiftUI

let posters = [
    "https://storage.googleapis.com/montco-stats/photo42938puralbk3a221ias/19EAE305-BED6-41C5-B0AE-717B87604046_1_105_c.jpeg",
    "https://storage.googleapis.com/montco-stats/photo42938puralbk3a221ias/DB664298-C7BB-4D06-9EC8-F7DEFF5F59B0_1_105_c.jpeg",
    "https://storage.googleapis.com/montco-stats/photo42938puralbk3a221ias/CC3C9A74-AE2C-4DE2-B899-B36ED3863D55_1_105_c.jpeg"
    
    
    
    
].map { URL(string: $0)! }

struct ContentView: View {
    @State var tag: Bool=false
    var body: some View {
        
        if tag {
         List(posters, id: \.self) { url in
             AsyncImage(
                url: url,
                placeholder: { Text("Loading ...") },
                image: { Image(uiImage: $0).resizable() }
             )
             .scaledToFit()
            
         }
        }
        
        
        Button(action: {
            self.tag = !self.tag
        }) {
            Text("Mouse Images")
                .padding([.leading,.trailing],30)
                .padding([.top,.bottom],20)
                .background(Color.green)
                .foregroundColor(Color.black)
                .cornerRadius(25)
                .shadow(radius: 25)
                .font(Font.custom("Avenir-Black", size: 17))
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

