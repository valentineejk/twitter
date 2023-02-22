//
//  SearchBar.swift
//  twitter
//
//  Created by Valentineejk on 27/01/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    @State var show = false
    @FocusState private var focus: Bool

    var body: some View {
        HStack{
            TextField("Search Twittter", text: $text)
                .focused($focus)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
            
            Button {
                isEditing = false
                text  = ""
                show.toggle()
                focus = false
            } label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 6)
                    .transition(.move(edge: .trailing))
                    .animation(.default, value: show )
            }

        }
        .onTapGesture {
            isEditing = true
        }
        
    }
    
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar(text: "hey")
//    }
//}
