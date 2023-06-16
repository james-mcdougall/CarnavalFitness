//
//  MainTabView.swift
//  CarnavalFitness
//
//  Created by James McDougall on 6/16/23.
//

import SwiftUI

import SwiftUI

struct MainTabView: View {
    @Binding var selectedIndex: Int
    
    var tabTitle: String {
        switch selectedIndex {
        case 0: return "Feed"
        case 1: return "Explore"
        case 2: return "New Post"
        case 3: return "Notifications"
        case 4: return "Profile"
        default: return ""
        }
    }

    var body: some View {
        NavigationView {
            ZStack {
                
                TabView() {
                    
                    FeedView()
                        .onTapGesture {
                            selectedIndex = 0
                        }
                        .tabItem {
                            Image(systemName: "photo.on.rectangle")
                        }.tag(0)
                    BMIView()
                        .onTapGesture {
                            selectedIndex = 1
                        }
                        .tabItem {
                            Image(systemName: "scalemass")
                        }.tag(1)
                    UploadPostView()
                        .onTapGesture {
                            selectedIndex = 2
                        }
                        .tabItem {
                            Image(systemName: "camera")
                        }.tag(2)
                    WorkoutView()
                        .onTapGesture {
                            selectedIndex = 3
                        }
                        .tabItem {
                            Image(systemName: "newspaper")
                        }.tag(3)
                    ProfileView()
                        .onTapGesture {
                            selectedIndex = 4
                        }
                        .tabItem {
                            Image(systemName: "person")
                                .navigationBarHidden(true)
                        }.tag(4)
                }
                .accentColor(.yellow)
            }
            
            
        }
    }
}
