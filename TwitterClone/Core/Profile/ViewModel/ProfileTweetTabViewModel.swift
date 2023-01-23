//
//  ProfileTweetTabViewModel.swift
//  TwitterClone
//
//  Created by Johanes Vincent Fernando on 23/01/23.
//

import Foundation

enum ProfileTweetTabViewModel: Int, CaseIterable {
case tweets
case replies
case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
