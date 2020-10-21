//
//  FGView.swift
//  HW2
//
//  Created by User07 on 2020/10/20.
//

import SwiftUI

struct FGView: View {
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
        List(FGs){(fg)in
            VStack{
                NavigationLink(destination: FGContentView(fg: fg)){
                    Text(fg.title)
                        .font(.custom("Helvetica", size: 20))
                        .foregroundColor(MyBlue)
                }
            }
            .padding()
        }
        .navigationTitle("採訪")
    }
}

struct FGView_Previews: PreviewProvider {
    static var previews: some View {
        FGView()
    }
}
