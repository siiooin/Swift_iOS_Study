//
//  ContentView.swift
//  NeflixThumbnail
//
//  Created by 전시언 on 7/11/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .toolbarBackground(.black, for: .tabBar)
            
            Text("2탭 화면")
                .tabItem{
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            
            Text("3탭 화면")
                .tabItem{
                    Image(systemName: "play.rectangle.on.rectangle")
                    Text("New & Hot")
                }

            
            Text("4탭 화면")
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("나의 넷플릭스")
                }
        }
    }
}

#Preview {
    ContentView()
}
