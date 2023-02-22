//
//  Search.swift
//  twitter
//
//  Created by Valentineejk on 11/01/2023.
//

import SwiftUI

struct Search: View {
    
    @State var isEditing = false
    @State var text = ""
    var body: some View {
        VStack {
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            if !isEditing{
                List( 0..<7 ){ i in
                    SearchCell(tag: "hello", tweets: String(i))
                }
            } else {
                List (0..<4) { m in
                    SearchUserCell()
                }
            }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
