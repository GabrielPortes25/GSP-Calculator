//
//  SwiftUIView.swift
//  GSP Calculator
//
//  Created by gabriel subutzki portes on 11/09/25.
//

import SwiftUI

struct buttonsView: View {
    @Binding public var result: Float
@Binding  var num1: String
@Binding  var num2: String
@Binding  public var isSelect: Bool
    @Binding public var optionSelected: String
    @State private var showResultView = false
    
    var body: some View {
        
            
            VStack{
                
                HStack(spacing: 10){
                    
                    Button {
                        num1 = ""
                        num2 = ""
                        optionSelected = ""
                        isSelect = false
                        result = 0.0
                        
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray.opacity(0.5))
                                .frame(width: 80,height: 80)
                            Text("AC")
                                .font(.title)
                            
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray.opacity(0.5))
                                .frame(width: 80,height: 80)
                            Text("+/-")
                                .font(.title)
                            
                        }                }
                    
                    Button {
                        optionSelected = "%"
                        isSelect = true
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray.opacity(0.5))
                                .frame(width: 80,height: 80)
                            Text("%")
                                .font(.title)
                            
                        }
                    }
                    Button {
                        optionSelected = "÷"
                        isSelect = true
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 80,height: 80)
                            Text("÷")
                                .font(.title)
                            
                        }
                    }
                }
                HStack{
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "7"
                        }else if(result == 0.0){
                            num1 += "7"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("7")
                                .font(.title)
                            
                        }
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "8"
                        }else if(result == 0.0){
                            num1 += "8"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("8")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "9"
                        }else if(result == 0.0){
                            num1 += "9"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("9")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        optionSelected = "X"
                        isSelect = true
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 80,height: 80)
                            Text("X")
                                .font(.title)
                            
                        }
                        
                    }
                }
                HStack{
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "4"
                        }else if(result == 0.0){
                            num1 += "4"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("4")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "5"
                        }else if(result == 0.0){
                            num1 += "5"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("5")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "6"
                        }else if(result == 0.0){
                            num1 += "6"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("6")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        optionSelected = "-"
                        isSelect = true
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 80,height: 80)
                            Text("-")
                                .font(.title)
                            
                        }
                    }
                }
                HStack{
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "1"
                        }else if(result == 0.0){
                            num1 += "1"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("1")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "2"
                        }else if(result == 0.0){
                            num1 += "2"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("2")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "3"
                        }else if(result == 0.0){
                            num1 += "3"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("3")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        optionSelected = "+"
                        isSelect = true
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 80,height: 80)
                            Text("+")
                                .font(.title)
                            
                        }
                    }
                }
                HStack{
                    Button {
                        //
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += "0"
                        }else if(result == 0.0){
                            num1 += "0"
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text("0")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        if(isSelect == true && result == 0.0){
                            num2 += ","
                        }else if(result == 0.0){
                            num1 += ","
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 80,height: 80)
                            Text(",")
                                .font(.title)
                            
                        }
                        
                    }
                    Button {
                        calculate()
                        showResultView = true
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 80,height: 80)
                            Text("=")
                                .font(.title)
                            
                        }
                        
                    }
                }
            }
            .background(Color.black)
            .foregroundStyle(.white)
    }
    
    func calculate() {
        guard let number1 = Float(num1.replacingOccurrences(of: ",", with: ".")),
              let number2 = Float(num2.replacingOccurrences(of: ",", with: ".")) else {
            print("Erro: entrada inválida")
            return
        }

        switch optionSelected {
        case "+":
            result = number1 + number2
        case "-":
            result = number1 - number2
        case "X":
            result = number1 * number2
        case "÷":
            result = number2 != 0 ? number1 / number2 : 0
        case "%":
            result = number1.truncatingRemainder(dividingBy: number2)
        default:
            break
        }
    }

}

//#Preview {
//    buttonsView()
//}
