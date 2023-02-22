//
//  Feed.swift
//  twitter
//
//  Created by Valentineejk on 11/01/2023.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical ,showsIndicators: false) {
            VStack(spacing: 18) {
                TweetCell(tweet: "", tweetImg: "post")
                ForEach(1...50, id: \.self) { _ in
                    TweetCell(tweet: tweetText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
