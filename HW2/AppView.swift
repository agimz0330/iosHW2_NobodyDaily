//
//  AppView.swift
//  HW2
//
//  Created by User01 on 2020/10/14.
//

import SwiftUI

struct AppView: View {
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
        ZStack{
            MyYellow
                .edgesIgnoringSafeArea(.all)
            TabView{
                MainView()
                    .tabItem {
                        Image(systemName: "circle.grid.3x3.fill")
                        Text("主頁")
                            .font(.custom("AaTSZY", size: 20))
                            .foregroundColor(MyBlue)
                    }
                PostsView()
                    .tabItem {
                        Image(systemName: "ellipses.bubble.fill")
                        Text("貼文")
                            .font(.custom("AaTSZY", size: 20))
                            .foregroundColor(MyBlue)
                    }
                StickersView()
                    .tabItem {
                        Image(systemName: "lightbulb.fill")
                        Text("貼圖")
                            .font(.custom("AaTSZY", size: 20))
                            .foregroundColor(MyBlue)
                    }
            }.accentColor(MyGreen)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
