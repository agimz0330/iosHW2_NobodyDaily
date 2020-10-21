//
//  MainView.swift
//  HW2
//
//  Created by User01 on 2020/10/14.
//

import SwiftUI

let MyYellow:Color = Color(red: 253/255, green: 251/255, blue: 239/255)
let MyGreen:Color = Color(red: 191/255, green: 224/255, blue: 235/255)
let MyBlue:Color = Color(red: 57/255, green: 67/255, blue: 92/255)

struct MainView: View {
    @State private var showSB = false
    @State private var showMF = false
    @State private var rotateDegree: Double = 0
    @State private var rotateDegreeC: Double = 0
    var body: some View {
        NavigationView{
            GeometryReader{
                geometry in
                ZStack{
                    MyYellow
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(.vertical){
                        //let h = geometry.size.height
                        let w = geometry.size.width
                        VStack{
                            HStack{
                                Button(action: {
                                    showSB = !showSB
                                    showMF = false
                                }, label: {
                                    Image("sb")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: w/2-20)
                                        .rotationEffect(.degrees(rotateDegree))
                                                    .animation(
                                                        Animation.linear(duration:5).repeatCount(1 ,autoreverses: true))
                                        .onAppear {
                                            rotateDegree = 360
                                        }
                                })
                                
                                Button(action: {
                                    showMF = !showMF
                                    showSB = false
                                }, label: {
                                    Image("mf")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: (w/2-20))
                                        .rotationEffect(.degrees(rotateDegreeC))
                                                    .animation(
                                                        Animation.linear(duration:5).repeatCount(1 ,autoreverses: true))
                                        .onAppear {
                                            rotateDegreeC = -360
                                        }
                                })
                            }
                            .padding(.horizontal)
                            
                            if showSB{
                                SomebodyView()
                                .padding()
                                .shadow(radius: 10)
                            }
                            
                            if showMF{
                                MeiFongView()
                                .padding()
                                .shadow(radius: 10)
                            }
                            
                            NavigationLink(destination: ThemesView()){
                                ZStack{
                                    Image("themeAd")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: w-30)
                                        .clipped()
                                }
                            }
                            
                            HStack{
                                VStack{
                                    NavigationLink(destination: ContactView()){
                                        Image("contact")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: w/2-20)
                                    }
                                    NavigationLink(destination: IconView()){
                                        Image("icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: w/2-20)
                                    }
                                    
                                }
                                NavigationLink(destination: FGView()){
                                    Image("FG_0")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: w/2-20)
                                        .clipped()
                                }
                            }
                            .frame(height: 400)
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        //MainView().environment(\.colorScheme, .dark)
    }
}

struct SomebodyView: View {
    var body: some View {
        ZStack{
            MyGreen
                .cornerRadius(30)
            VStack{
                Group{
                    Text("這是")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                    + Text("「某人」")
                        .font(.custom("AaTSZY", size: 40))
                        .foregroundColor(MyBlue)
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                }
                .padding()
                .background(MyYellow)
                .cornerRadius(30)
                Spacer(minLength: 20)
                HStack{
                    Spacer()
                    Text("嘴角有痣！\n")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                    Image("mouth")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                }
                HStack{
                    Image("hairStyle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                    Text("  平平的頭毛～\n")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct MeiFongView: View {
    var body: some View {
        ZStack{
            MyGreen
                .cornerRadius(30)
            VStack{
                Group{
                    Text("這是")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                    + Text("「美鳳」")
                        .font(.custom("AaTSZY", size: 40))
                        .foregroundColor(MyBlue)
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                }
                .padding()
                .background(MyYellow)
                .cornerRadius(30)
                Spacer(minLength: 20)
                HStack{
                    Spacer()
                    Text("長瀏海！\n")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                    Image("hair_mf")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                }
                HStack{
                    Image("hairStyle_mf")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                    Text("  頭髮翹起來～\n")
                        .font(.custom("AaTSZY", size: 30))
                        .foregroundColor(MyBlue)
                    Spacer()
                }
            }
            .padding()
        }
    }
}
