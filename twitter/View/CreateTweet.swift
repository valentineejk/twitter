//
//  CreateTweet.swift
//  twitter
//
//  Created by Valentineejk on 11/01/2023.
//

import SwiftUI

struct CreateTweet: View {
    @State var text = ""
    var function: () -> Void
    
    var body: some View {
        VStack {
            HStack{
                Button {
                    self.function()
                } label: {
                    Text("Cancel")
                }

                Spacer()
                Button {
                } label: {
                    Text("Tweet")
                        .padding()
                }
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())

            }
            
            TextView(text: $text)
            
        }
        .padding()
    }
}
//
//struct CreateTweet_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateTweet(function: ()-> print("hello"))
//    }
//}
