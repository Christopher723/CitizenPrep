//
//  ContentView.swift
//  hackathon
//
//  Created by Christopher Woods on 10/21/23.
import SwiftUI



struct ContentView: View {
    @ObservedObject var viewModel = QNAViewModel()
    @State private var selectedAnswerIndex: Int?
    @State private var isCorrect: Bool = false
    @State private var currentQuestionIndex: Int = 0
    @State private var isTranslated = false
    @State private var isCurrentAnswerTranslated = false
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.cyan, Color.blue]), startPoint: .leading, endPoint: .trailing)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer().frame(height: 10)
                Text("Civic Test")
                    .font(.title)
                    .bold()
                Spacer().frame(height: 40)
                Text(isTranslated ? viewModel.Questions[currentQuestionIndex].questionArabic : viewModel.Questions[currentQuestionIndex].questionEnglish)
                    .onTapGesture {
                        withAnimation {
                            isTranslated.toggle()
                        }
                    }
                    .font(.headline)
                    .padding()
                
                Text("Answers:")
                    .font(.title)
                    .onTapGesture {
                        withAnimation {
                            isCurrentAnswerTranslated.toggle()
                        }
                    }
                ForEach(0..<viewModel.Questions[currentQuestionIndex].answerPotential.count, id: \.self) { index in
                    AnswerBox(
                        answer: isCurrentAnswerTranslated ? viewModel.Questions[currentQuestionIndex].answerPotentialArabic[index] : viewModel.Questions[currentQuestionIndex].answerPotential[index],
                        isCorrect: selectedAnswerIndex == index && isCorrect,
                        didSelectAnswer: {
                            if selectedAnswerIndex == nil {
                                selectedAnswerIndex = index
                                isCorrect = (index == viewModel.Questions[currentQuestionIndex].answer)
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    isCurrentAnswerTranslated = false
                                    isTranslated = false
                                    self.nextQuestion()
                                }
                            }
                        }
                    )
                    .contextMenu {
                        Button(action: {
                            withAnimation {
                                isCurrentAnswerTranslated.toggle()
                            }
                        }) {
                            Text("Toggle Translation")
                        }
                    }
                    
                    
                }
            }
            .padding()
        }
    }
        
        func nextQuestion() {
            
            selectedAnswerIndex = nil
            isCorrect = false
            currentQuestionIndex += 1
            
            
            if currentQuestionIndex < viewModel.Questions.count {
                
            } else {
                currentQuestionIndex = 0
            }
            
        }
    }



struct AnswerBox: View {
    let answer: String
    let isCorrect: Bool
    var didSelectAnswer: () -> Void

    var body: some View {
        VStack {
            Text(answer)
                .font(.system(size: 17))
                .padding()
                .foregroundColor(.black)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, alignment: .center)

        .background(isCorrect ? Color.green : Color.white)
        .cornerRadius(10)
        .padding(1)
        .onTapGesture {
            didSelectAnswer()
        }
    }
}





#Preview {
    ContentView()
}
