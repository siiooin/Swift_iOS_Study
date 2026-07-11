//
//  ContentView.swift
//  PetinformationApp
//
//  Created by 전시언 on 5/19/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ProfileView()
            LikeView()
            SkillView()
            PhotoView()
            
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
