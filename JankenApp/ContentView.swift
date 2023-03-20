//
//  ContentView.swift
//  JankenApp
//
//  Created by 菅谷亮太 on 2023/03/15.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    let START = 0
    let GU = 1
    let CHOKI = 2
    let PA = 3
    var body: some View {
        VStack {
            Spacer()
            if answerNumber == START {
                Text("じゃんけんを始めます")
                    .padding(.bottom)
            } else if answerNumber == GU {
                //グーを表示
                Image("gu")
                    .resizable() //リサイズ
                    .scaledToFit() //アスペクト比保持
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == CHOKI {
                //チョキを表示
                Image("choki")
                    .resizable() //リサイズ
                    .scaledToFit() //アスペクト比保持
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
                
            } else {
                //パーを表示
                Image("pa")
                    .resizable() //リサイズ
                    .scaledToFit() //アスペクト比保持
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button {
                //answerNumber = Int.random(in: 1...3)
                var newAnswerNumber = 0
                repeat{
                    newAnswerNumber = Int.random(in: 1...3)
                }while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
