//
//  Post.swift
//  HW2
//
//  Created by User06 on 2020/10/18.
//

import Foundation
struct Post: Identifiable{
    var id = UUID()
    let imageName: String
    let description: String
    let heartCount: Int
    let messengeCount: Int
    let shareCount: Int
}

let posts = [Post(imageName: "post1", description: "我的連假", heartCount: 7364, messengeCount: 96, shareCount: 301),
             Post(imageName: "post2", description: "這樣才不會太快面對。", heartCount: 8506, messengeCount: 122, shareCount: 210),
             Post(imageName: "post3", description: "連假勞工。", heartCount: 4474, messengeCount: 24, shareCount: 103),
             Post(imageName: "post4", description: "慘。", heartCount: 4480, messengeCount: 42, shareCount: 189),
             Post(imageName: "post5", description: "祝大家發發發。", heartCount: 4323, messengeCount: 55, shareCount: 190),
             Post(imageName: "post6", description: "社畜の一生。", heartCount: 5790, messengeCount: 101, shareCount: 341),
             Post(imageName: "post7", description: "老娘主修不同！", heartCount: 3679, messengeCount: 38, shareCount: 145),
             Post(imageName: "post8", description: "窮到歸零。", heartCount: 5252, messengeCount: 48, shareCount: 299),
             Post(imageName: "post9", description: "到死都還沒想到。", heartCount: 4302, messengeCount: 63, shareCount: 177),
             Post(imageName: "post10", description: "畢生志向。", heartCount: 5952, messengeCount: 173, shareCount: 323),
             Post(imageName: "post11", description: "精神無法振興。", heartCount: 8773, messengeCount: 146, shareCount: 491),
             Post(imageName: "post12", description: "無一是處。", heartCount: 5768, messengeCount: 114, shareCount: 238),
             Post(imageName: "post13", description: "連假請不要當老鼠屎", heartCount: 10000, messengeCount: 103, shareCount: 829),
             Post(imageName: "post14", description: "過年圓到現在。", heartCount: 4486, messengeCount: 63, shareCount: 250),
             Post(imageName: "post15", description: "吉祥話（？", heartCount: 3621, messengeCount: 44, shareCount: 53),
             Post(imageName: "post16", description: "少吃一顆你也不會瘦到哪去。", heartCount: 1000, messengeCount: 205, shareCount: 507),
             Post(imageName: "post17", description: "觀念正確。", heartCount: 8979, messengeCount: 208, shareCount: 494),
             Post(imageName: "post18", description: "我下單，你結帳可以嗎？", heartCount: 3414, messengeCount: 129, shareCount: 141),
             Post(imageName: "post19", description: "你是不是也有這種朋友...", heartCount: 2126, messengeCount: 57, shareCount: 55),
             Post(imageName: "post20", description: "胖了就凶不起來了。", heartCount: 5473, messengeCount: 206, shareCount: 211),
             Post(imageName: "post21", description: "要收編了嗎？", heartCount: 3202, messengeCount: 151, shareCount: 73),
             Post(imageName: "post22", description: "那些年幫我付清的帳單。", heartCount: 6902, messengeCount: 148, shareCount: 188),
             Post(imageName: "post23", description: "嘔...", heartCount: 4896, messengeCount: 244, shareCount: 313),
             Post(imageName: "post24", description: "無條件支持雞排婚姻合法化", heartCount: 10000, messengeCount: 323, shareCount: 222),
             Post(imageName: "post25", description: "喵喵❤️", heartCount: 1524, messengeCount: 133, shareCount: 38),
             Post(imageName: "post26", description: "噗嚕噗嚕噗嚕", heartCount: 2344, messengeCount: 122, shareCount: 111),
             Post(imageName: "post27", description: "還來喔！", heartCount: 2626, messengeCount: 65, shareCount: 139),
             Post(imageName: "post28", description: "我真是大器。", heartCount: 1733, messengeCount: 146, shareCount: 131),
             Post(imageName: "post29", description: "好啊整條馬路都給你們談戀愛啊！", heartCount:4062, messengeCount: 217, shareCount: 322),
             Post(imageName: "post30", description: "㊗️祝您衰運久久", heartCount: 1994, messengeCount: 114, shareCount: 104),
             Post(imageName: "post31", description: "好詩好詩。", heartCount: 1436, messengeCount: 95, shareCount: 80),
             Post(imageName: "post31", description: "環保或自保。", heartCount: 10000, messengeCount: 233, shareCount: 291)
]
