//
//  PostDetailView.swift
//  HW2
//
//  Created by User06 on 2020/10/18.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
        ScrollView(.vertical){
            ZStack{
                MyYellow
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Divider()
                    Spacer(minLength: 20)
                    HStack{
                        Image("firstPic")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .border(Color.white, width: 5)
                            .shadow(radius: 5)
                        
                        VStack{
                            Text(" 某人日常")
                                .font(.custom("AaTSZY", size: 20))
                                .foregroundColor(MyBlue)
                            Text(" ")
                        }
                        Spacer()
                    }
                    Spacer(minLength: 15)
                    Image(post.imageName)
                        .resizable()
                        .scaledToFill()
                        .clipped()
                    HStack{
                        Text("  | \n  | ")
                            .font(.custom("AaTSZY", size: 20))
                            .foregroundColor(MyBlue)
                        Text(post.description)
                            .font(.custom("AaTSZY", size: 40))
                            .foregroundColor(MyBlue)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        CountView(post: post)
                    }
                    Spacer(minLength: 20)
                }
            }
        }.padding()
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: Post(imageName: "post1", description: "我的連假", heartCount: 7364, messengeCount: 96, shareCount: 301))
            .previewLayout(.sizeThatFits)
    }
}

struct CountView: View {
    let post: Post
    var body: some View {
        HStack{
            ZStack(alignment: .leading){
                HStack{
                    Spacer(minLength: 50)
                    Text(String(post.heartCount))
                        .font(.custom("AaTSZY", size: 50))
                        .foregroundColor(.red)
                        .frame(width: 150, height: 100)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.5, green: 0.5, blue: 0.5), Color(red: 57/255, green: 67/255, blue: 92/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                        //.clipShape(Capsule())
                        .border(MyGreen, width: 5)
                        .cornerRadius(30)
                }
                Image(systemName: "heart.fill")
                    .font(.custom("", size: 30))
                    .foregroundColor(.red)
                    .frame(width: 70, height: 70)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(MyGreen, lineWidth: 5))
            }
            
            ZStack(alignment: .leading){
                HStack{
                    Spacer(minLength: 50)
                    Text(String(post.messengeCount))
                        .font(.custom("AaTSZY", size: 50))
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 100)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.5, green: 0.5, blue: 0.5), Color(red: 57/255, green: 67/255, blue: 92/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                        .border(MyGreen, width: 5)
                        .cornerRadius(30)
                }
                Image(systemName: "message.fill")
                    .font(.custom("", size: 30))
                    .foregroundColor(.blue)
                    .frame(width: 70, height: 70)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(MyGreen, lineWidth: 5))
            }
            ZStack(alignment: .leading){
                HStack{
                    Spacer(minLength: 50)
                    Text(String(post.heartCount))
                        .font(.custom("AaTSZY", size: 50))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 100)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.5, green: 0.5, blue: 0.5), Color(red: 57/255, green: 67/255, blue: 92/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                        .border(MyGreen, width: 5)
                        .cornerRadius(30)
                }
                Image(systemName: "arrowshape.turn.up.right.fill")
                    .font(.custom("", size: 30))
                    .foregroundColor(.gray)
                    .frame(width: 70, height: 70)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(MyGreen, lineWidth: 5))
            }
        }
    }
}
