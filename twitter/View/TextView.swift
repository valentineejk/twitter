//
//  TextView.swift
//  twitter
//
//  Created by Valentineejk on 12/01/2023.
//

import SwiftUI

struct TextView: View {
    @Binding var text: String
    var body: some View {
TextEditor(text: $text)
            .font(.custom("HelveticaNeue", size: 16))

        
    }
}


