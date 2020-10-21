//
//  PostColumnView.swift
//  HW2
//
//  Created by User06 on 2020/10/18.
//

import SwiftUI

struct PostColumnView: View {
    var currentPost:Int
    let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
    let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
    let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)
    var body: some View {
            ScrollView(.vertical){
                let columns = [GridItem()]
                ZStack{
                    MyYellow
                        .edgesIgnoringSafeArea(.all)
                    LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders]) {
                        Section(header: Text("@NobodyDaily").font(.custom("AaTSZY", size: 20))
                                    .foregroundColor(MyBlue)
                                    .padding()
                                    .background(MyGreen)
                                    .cornerRadius(50)){
                            ForEach(currentPost ..< posts.count) { (index) in
                                PostDetailView(post: posts[index])
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("貼文")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct PostColumnView_Previews: PreviewProvider {
    static var previews: some View {
        PostColumnView(currentPost: 0)
    }
}
