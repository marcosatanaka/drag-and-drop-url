//
//  ViewB.swift
//  Test
//
//  Created by Marcos Tanaka on 17/11/21.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        Text("View B!")
            .frame(width: 100, height: 100)
            .background(.green)
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
