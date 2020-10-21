//
//  PostsView.swift
//  HW2
//
//  Created by User06 on 2020/10/18.
//

import SwiftUI

struct PostsView: View {
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                ZStack{
                    MyYellow
                        .edgesIgnoringSafeArea(.all)
                    let columns = [GridItem(), GridItem(), GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(posts.indices) { (index) in
                            
                            NavigationLink(destination: PostColumnView(currentPost: index)){
                                VStack {
                                    Image(posts[index].imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 150)
                                        .clipped()
                                    HStack{
                                        Text("|\n|")
                                            .font(.custom("AaTSZY", size: 10))
                                            .foregroundColor(MyBlue)
                                        Text("\(posts[index].description)")
                                            .font(.custom("AaTSZY", size: 20))
                                            .foregroundColor(MyBlue)
                                    }
                                }
                            }
                            
                        }
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
