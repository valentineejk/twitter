//
//  SearchUserCell.swift
//  twitter
//
//  Created by Valentineejk on 22/02/2023.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Val")
                    .fontWeight(.heavy)
                Text("@valentineejk")

            }
            Spacer(minLength: 0)
            
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
