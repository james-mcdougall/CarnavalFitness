//
//  FeedCell.swift
//  CarnavalFitness
//
//  Created by James McDougall on 6/16/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            //User info
            HStack {
                Image("CompanyIcon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("Jonathon Carnaval")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding([.leading, .bottom], 8)
            
            // Post Info
            
            Image("CompanyIcon")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // Action Buttons
            VStack(alignment: .leading) {
                HStack(spacing: 16) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .font(.system(size: 20))
                            .padding(4)
                    })
                    
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                            Image(systemName: "bubble.right")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                                .font(.system(size: 20))
                                .padding(4)
                        })
                    
                    Button(action: {}, label: {
                        Image(systemName: "paperplane")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .font(.system(size: 20))
                            .padding(4)
                    })
                }
                .padding(.leading, 4)
                .foregroundColor(.white)
                
                // Caption
                Text("2 likes")
                    .font(.system(size: 14, weight: .semibold))
                    .padding(.leading, 4)
                    .padding(.bottom, 2)
                
                HStack {
                    Text("trainwithcarnivalfitness")
                        .font(.system(size: 14, weight: .semibold)) + Text(" Impossible says I'm Possible!")
                        .font(.system(size: 15))
                }
                .padding(.horizontal, 8)
                
                Text("1h")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
                    .padding(.top, -2)
            }
            .padding(.leading, 8)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
