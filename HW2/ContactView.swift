//
//  ContactView.swift
//  HW2
//
//  Created by User07 on 2020/10/20.
//

import SwiftUI

struct ContactView: View {
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
        ZStack{
            MyYellow
                .edgesIgnoringSafeArea(.all)
            List{
                Section(header: Text("找 App 作者")){
                    HStack{
                        Image("me")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("00757015@mail.ntou.edu.tw")
                            .font(.custom("AaTSZY", size: 16))
                            .foregroundColor(MyBlue)
                    }
                }
                Section(header: Text("找某人")){
                    HStack{
                        Image("fb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("@nobodysdaily")
                            .font(.custom("AaTSZY", size: 20))
                            .foregroundColor(MyBlue)
                    }
                    HStack{
                        Image("ig")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("@nobodysdaily")
                            .font(.custom("AaTSZY", size: 20))
                            .foregroundColor(MyBlue)
                    }
                    HStack{
                        Image("mail")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("G8D.Creative@gmail.com")
                            .font(.custom("AaTSZY", size: 19))
                            .foregroundColor(MyBlue)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("聯絡資訊")
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
