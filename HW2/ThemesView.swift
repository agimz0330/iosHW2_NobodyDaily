//
//  ThemesView.swift
//  HW2
//
//  Created by User07 on 2020/10/20.
//

import SwiftUI

struct ThemesView: View {
    @State private var currentPage = 0
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
        ScrollView(.vertical){
            ZStack{
                Image("theme00")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.3)
                VStack{
                    Text("某人日常之人間廢渣")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                        .padding()
                        .background(MyGreen)
                        .cornerRadius(50)
                    Text("要成為一個廢渣，就從生活做起，讓老娘教你怎麼廢，某人日常就是廢物的基本款啊！")
                        .font(.custom("AaTSZY", size: 18))
                        .foregroundColor(MyBlue)
                    ScrollView(.horizontal){
                        let rows = [GridItem()]
                        LazyHGrid(rows: rows) {
                            ForEach(0 ..< 4){(index)in
                                Image("theme0\(index)")
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        .frame(height: 350)
                    }
                    Link(destination: URL(string: "http://bit.ly/2tmi3pR")!
                    ){
                        Label("Buy Now", systemImage: "cart.fill.badge.plus")
                            .font(.custom("AaTSZY", size: 30))
                            .foregroundColor(MyBlue)
                    }
                }
            }
            ZStack{
                Image("theme10")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.3)
                VStack{
                    Text("某人日常之台灣老娘")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                        .padding()
                        .background(MyGreen)
                        .cornerRadius(50)
                    Text("老娘兼差到你的主題來啦！你聞聞看好濃好濃的台灣味！")
                        .font(.custom("AaTSZY", size: 18))
                        .foregroundColor(MyBlue)
                    ScrollView(.horizontal){
                        let rows = [GridItem()]
                        LazyHGrid(rows: rows) {
                            ForEach(0 ..< 4){(index)in
                                Image("theme1\(index)")
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        .frame(height: 350)
                    }
                    Link(destination: URL(string: "https://bit.ly/2klC0fa")!
                    ){
                        Label("Buy Now", systemImage: "cart.fill.badge.plus")
                            .font(.custom("AaTSZY", size: 30))
                            .foregroundColor(MyBlue)
                    }
                }
            }
        }
        .navigationTitle("主題")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ThemesView_Previews: PreviewProvider {
    static var previews: some View {
        ThemesView()
    }
}
