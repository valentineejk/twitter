//
//  TweetCell.swift
//  twitter
//
//  Created by Valentineejk on 13/01/2023.
//

import SwiftUI

struct TweetCell: View {
    
    var tweet:String
    var tweetImg: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("valentineejk ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@valentineejk")
                        .foregroundColor(.gray)
                    
                    Text(tweetText)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImg {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                            
                        }
                        .frame(height: 250)
                    }
                    
                    HStack(spacing: 50){
                        
                        Button {
                            
                        } label: {
                            Image("views")
                                .resizable()
                                .frame(width: 16, height: 16)

                                
        //                    Text("4.3M")
        //                        .foregroundColor(.gray)
        //                        .font(.footnote)
                        }
                        Button {
                        } label: {
                            Image("Comments")
                                .resizable()
                                .frame(width: 16, height: 16)
                        }
                        Button {
                        } label: {
                            Image("Retweet")
                                .resizable()
                                .frame(width: 16, height: 16)
                        }
                        Button {
                        } label: {
                            Image("love")
                                .resizable()
                                .frame(width: 16, height: 16)
                        }
                        
                        Button {
                        } label: {
                            Image("upload")
                                .resizable()
                                .frame(width: 16, height: 16)
                        }

                    }
                    .padding(.top, 4)
                }
               
                
            }
            //tweet bottom
          
        }
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell(tweet: tweetText)
    }
}

var tweetText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula quam eu dui lacinia, vel placerat mauris aliquam. Suspendisse eu interdum massa."
