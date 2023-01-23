//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Johanes Vincent Fernando on 19/10/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedTab: ProfileTweetTabViewModel = .tweets
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            ActionButtons
            UserDetail
            TabComponent
            TweetList
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                Button {
                    
                }label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                }
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
    
    var ActionButtons: some View {
        HStack {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    
    var UserDetail: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text("Vincent Fernando")
                    .font(.title2)
                    .bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@vinfernandoo")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Taiga faiya saiba faiba daiba baiba jyajya")
                .font(.subheadline)
                .padding(.vertical)
            HStack(spacing: 32) {
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Yogyakarta, Indonesia")
                }
                HStack{
                    Image(systemName: "link")
                    Text("www.spacecolony.com")
                }
                
            }
            .font(.caption)
            .foregroundColor(.gray)
            HStack(spacing: 32) {
                HStack{
                    Text("100")
                        .foregroundColor(.black)
                        .bold()
                    Text("Following")
                }
                HStack{
                    Text("12.5k")
                        .foregroundColor(.black)
                        .bold()
                    Text("Followers")
                }
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
    
    var TabComponent: some View {
        HStack {
            ForEach(ProfileTweetTabViewModel.allCases, id: \.rawValue) {
                item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedTab == item ? .semibold : .regular)
                        .foregroundColor(selectedTab == item ? .black : .gray)
                    
                    if selectedTab == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "tab", in: animation)
                    }
                    else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedTab = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x:0, y: 16))
    }
    
    var TweetList: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 10, id: \.self) { _ in
                    TweetComponent()
                        .padding()
                }
            }
        }
    }
}
