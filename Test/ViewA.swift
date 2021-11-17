//
//  ViewA.swift
//  Test
//
//  Created by Marcos Tanaka on 17/11/21.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        Text("View A")
            .frame(width: 100, height: 100)
            .background(.red)
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
