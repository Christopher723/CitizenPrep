//
//  EnglishTest.swift
//  hackathon
//
//  Created by Christopher Woods on 10/21/23.
//

import SwiftUI

struct EnglishTest: View {
    @State var inputText = ""
    @State var isTranslationVisible = false
    @State var currentPromptIndex = 0

    let prompts = ["Я взяв собаку в парк", "Чоловік хоче купити нову машину"]
    let answers = ["I took my dog to the park", "The man bought a new car"]

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.cyan, Color.blue]), startPoint: .leading, endPoint: .trailing)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer().frame(height: 200)
                Text("English Writing Test")
                    .bold()
                    .font(.title)
                Spacer().frame(height: 100)
                Text(prompts[currentPromptIndex])
                    .font(.title)
                
                TextField("Enter translation", text: $inputText, onCommit: {
                    isTranslationVisible = true
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                
                
                if isTranslationVisible {
                    HStack{
                        Text("Answer: ")
                            .font(.system(size: 20))
                        Text(answers[currentPromptIndex])
                            .font(.system(size: 23))
                    }
                    
                }
                if isTranslationVisible{
                    Button("Next", action: {
                        withAnimation {
                            inputText = ""
                            isTranslationVisible = false
                            currentPromptIndex += 1
                            
                        }
                    })
                    .padding()
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(20)
                    .padding()
                }
                Spacer()
            }
        }
    }
}

struct EnglishTest_Previews: PreviewProvider {
    static var previews: some View {
        EnglishTest()
    }
}



#Preview {
    EnglishTest()
}
