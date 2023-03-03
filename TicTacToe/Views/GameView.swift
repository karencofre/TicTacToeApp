//
//  GameView.swift
//  TicTacToe
//
//  Created by karen cofré on 03-03-23.
//

import SwiftUI

struct GameView: View {
    @Binding var player: String
    var vs:String
    @State var gato1:Bool = false
    @State var gato2:Bool = false
    @State var gato3:Bool = false
    @State var gato4:Bool = false
    @State var gato5:Bool = false
    @State var gato6:Bool = false
    @State var gato7:Bool = false
    @State var gato8:Bool = false
    @State var gato9:Bool = false
    
    var body: some View {
        ZStack {
            Color(UIColor(named:"background")!)
                .ignoresSafeArea()
            VStack {
               // Text("hello player \(player) you are vs \(vs)")
                HStack(spacing:20){
                    HStack{
                        Image("equis")
                        Image("circulo")
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width:96,height:40)
                            .cornerRadius(15)
                        HStack{
                            Image("\(player)")
                            Text("TURN")
                                .foregroundColor(Color(UIColor(named:"white")!))
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color(UIColor(named:"white")!))
                            .frame(width:40,height:40)
                        Button(action:{
                            gato1 = false
                            gato2 = false
                            gato3 = false
                            gato4 = false
                            gato5 = false
                            gato6 = false
                            gato7 = false
                            gato8 = false
                            gato9 = false
                        }){
                            Image("arrow")
                                .padding()
                        }
                        .frame(width:40,height:40)
                    }
                }
                //1row
                HStack(spacing:20){
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato1 = true
                        }){
                            if gato1{
                                Image("\(player)")
                                    .resizable()
                                    .frame(width:40,height:40)
                                
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato2 =  true
                        }){
                            if gato2{
                                Image("\(player)")
                                    .resizable()
                                    .frame(width:40,height:40)
                                    .cornerRadius(15)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato3 = true
                        }){
                            if gato3{
                                Image("\(player)").resizable()
                                    .frame(width:40,height:40)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                        
                    }
                }.padding()
                
                // 2 row
                
                HStack(spacing:20){
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato4 = true
                        }){
                            if gato4{
                                Image("\(player)").resizable()
                                    .frame(width:40,height:40)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato5 = true                        }){
                            if gato5{
                                Image("\(player)").resizable()
                                    .frame(width:40,height:40)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato6 = true
                        }){
                            if gato6{
                                Image("\(player)").resizable()
                                    .frame(width:40,height:40)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                        
                    }
                }.padding()
                
                //3row
                
                HStack(spacing:20){
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato7 = true
                        }){
                            if gato7{
                                Image("\(player)").resizable()
                                    .frame(width:40,height:40)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato8 = true
                        }){
                            if gato8{
                                Image("\(player)").resizable()
                                    .frame(width:40,height:40)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:96)
                        .foregroundColor(Color(UIColor(named:"darkblue")!))
                        .cornerRadius(15)
                        Button(action:{
                            gato9 = true
                        }){
                            if gato9{
                                Image("\(player)").resizable()
                                    .frame(width:40,height:40)
                            }
                            else{
                                Text("").padding()
                            }
                        }.padding()
                        
                    }
                }.padding()
                //last row
                
                HStack(spacing:20){
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:64)
                        .foregroundColor(Color(UIColor(named:"cyan")!))
                        .cornerRadius(15)
                        Text("You:\(player)")
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:64)
                        .foregroundColor(Color(UIColor(named:"white")!))
                        .cornerRadius(15)
                        Text("Ties: 0")
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width:96,height:64)
                        .foregroundColor(Color(UIColor(named:"yellow")!))
                        .cornerRadius(15)
                        Text("vs:\(vs)")
                        
                    }
                }.padding()

                //fin row
            }
        }
    }
}
 
 
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(player: .constant("equis"), vs: "cpu")
    }
}
