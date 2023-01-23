//
//  TweetComponent.swift
//  TwitterClone
//
//  Created by Johanes Vincent Fernando on 19/10/22.
//

import SwiftUI

struct TweetComponent: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemRed))
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Tony Stark")
                            .font(.subheadline).bold()
                        Text("@ironman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text("I am Iron Man")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()

                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()

                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 5)
            .foregroundColor(.gray)
            Divider()
        }
    }
}

struct TweetComponent_Previews: PreviewProvider {
    static var previews: some View {
        TweetComponent()
    }
}
