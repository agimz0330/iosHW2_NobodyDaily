//
//  StickersView.swift
//  HW2
//
//  Created by User01 on 2020/10/14.
//

import SwiftUI

struct StickersView: View {
    @State private var currentPage = 0
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
        ScrollView(.vertical){
            ZStack{
                MyYellow
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        MyYellow
                        TabView(selection: $currentPage){
                            ForEach(0 ..< stickers.count){(index) in
                                Image("sticker\(index)")
                                    .resizable()
                                    .scaledToFill()
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .frame(maxWidth: .infinity, maxHeight: 150, alignment: .center)
                        MyYellow
                    }
                    .frame(height: 150)
                    
                    Spacer(minLength: 20)
                    
                    Text(stickers[currentPage].name)
                        .font(.custom("AaTSZY", size: 20))
                        .foregroundColor(MyBlue)
                        .padding()
                        .background(MyGreen)
                        .cornerRadius(30)
                    
                    Link(destination: URL(string: stickers[currentPage].link)!, label: {
                        Image("stickerC\(currentPage)")
                            .resizable()
                            .scaledToFit()
                    })
                    .padding()
                }
            }
        }
    }
}

struct StickersView_Previews: PreviewProvider {
    static var previews: some View {
        StickersView()
    }
}
