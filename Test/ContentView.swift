//
//  ContentView.swift
//  Test
//
//  Created by Marcos Tanaka on 17/11/21.
//

import SwiftUI

struct ContentView: View {

    let myElement = MyElement(title: URL(string: "http://www.google.com")!)

    var body: some View {
        HStack {
            ViewA()
                .onDrag { NSItemProvider(object: myElement.title as NSURL) }
            ViewB()
                .onDrop(of: [.url], isTargeted: nil, perform: { providers, location in
                    _ = providers.first?.loadObject(ofClass: NSURL.self, completionHandler: { text, error in
                        print("Dropped \(text?.description ?? "?") with error: \(error?.localizedDescription ?? "")")
                    })
                    return true
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
