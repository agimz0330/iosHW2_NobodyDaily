//
//  FGContentView.swift
//  HW2
//
//  Created by User07 on 2020/10/20.
//

import SwiftUI

struct FGContentView: View {
    var fg:FG
    @State private var show = false
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    
    var body: some View {
        ZStack(alignment: .topLeading){
            MyYellow
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("FG_0")
                    .resizable()
                    .scaledToFit()
                    .grayscale(0.5)
                    .brightness(0.2)
                    .transition(.opacity)
                    .animation(.easeInOut(duration: 5))
                    .onAppear {
                        self.show = true
                    }
                TextEditor(text: .constant(fg.content))
            }
        }
        .navigationTitle(fg.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FGContentView_Previews: PreviewProvider {
    static var previews: some View {
        FGContentView(fg: FG(title: "某人是你，某人是我，也可以是他，隨便啦！", content: """
某人日常是一個深入生活的插畫作品，描繪著每個人生活中會面對到的大小事，以及那群嘴賤心軟的好朋友，因此特別容易引起大家的共鳴。對Auddie來說，他把生活中的機歪、討厭、廢事都集中在這裡。時尚亂入問到為什麼要叫某人，他笑著說：「主角叫某人，是因為大家都可以當某人，美鳳和阿娥則是故意取了菜市場名，因為他們三個是有大嬸靈魂的年輕男女，就是主婦心啦！」
"""
            ))
    }
}
