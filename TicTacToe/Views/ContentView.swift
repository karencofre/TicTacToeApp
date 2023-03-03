//
//  ContentView.swift
//  TicTacToe
//
//  Created by karen cofré on 03-03-23.
//

import SwiftUI

struct ContentView: View {
    @State var player: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor(named:"background")!)
                    .ignoresSafeArea()
              
                    VStack {
                        HStack(spacing:30){
                            Image("equis")
                                .resizable()
                                .frame(width:32,height:32)
                            Image("circulo")
                                .resizable()
                                .frame(width:32,height:32)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width:327,height:205)
                                .cornerRadius(15)
                                .foregroundColor(Color(UIColor(named:"darkblue")!))
                            VStack{
                                Text("Pick Player 1's Mark")
                                    .foregroundColor(Color(UIColor(named:"white")!))
                                ZStack{
                                    Rectangle()
                                        .frame(width:279,height:72)
                                        .foregroundColor(Color(UIColor(named:"background")!))
                                        .cornerRadius(15)
                                    HStack(spacing:70){
                                        Button(action: {
                                                  player = "equis"
                                               }) {
                                                   Image("equis-light")
                                                       .resizable()
                                                       .frame(width:44,height:44)
                                               }
                                        ZStack{
                                            Rectangle()
                                                .frame(width:100,height:54)
                                                .foregroundColor(Color(UIColor(named:"white")!))
                                                .cornerRadius(15)
                                            Button(action: {
                                                      player = "circulo"
                                                   }) {
                                                       Image("circulo-dark")
                                                           .resizable()
                                                           .frame(width:40,height:44)
                                                   }
                                        }
                                    }.padding()
                                }
                                Text("Remember : you go first")
                                    .foregroundColor(Color(UIColor(named:"white")!))
                            }
                        }
                        
                        VStack {
                                    NavigationLink( destination:GameView(player:$player,vs:"cpu")){
                                        Text("New game (vs cpu)")
                                            .padding()
                                    }
                                .frame(width:327,height: 56)
                                
                                .foregroundColor(Color(UIColor(named:"background")!))
                                .background(Color(UIColor(named:"yellow")!))
                                .cornerRadius(15)
                                .shadow(color:Color(UIColor(named:"darkyellow")!).opacity(0.5),radius:15,x:0,y:5)
                                 
                                .padding(.top)
                                 
                                
                                     
                                        NavigationLink( destination:GameView(player: $player,vs:"player")){
                                            Text("New game (vs player)")
                                                .padding()
                                        }
 
                                    .frame(width:327,height: 56)
                                    
                                    .foregroundColor(Color(UIColor(named:"background")!))
                                    .background(Color(UIColor(named:"cyan")!))
                                .cornerRadius(15)
                                .shadow(color:Color(UIColor(named:"darkcyan")!).opacity(0.5),radius:15,x:0,y:5)
                                .padding(.top)
                                       
                                    
                                        
                            
                        }
                    }
                    .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
