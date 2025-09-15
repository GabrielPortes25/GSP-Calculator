//
//  ContentView.swift
//  GSP Calculator
//
//  Created by gabriel subutzki portes on 11/09/25.
//

import SwiftUI

struct CalculatorView: View {
    @State private var num1: String = ""
    @State private var num2: String = ""
    @State private var result: Float = 0.0
    @State private var isSelected: Bool = false
    @State private var optionSelected: String = ""
    @State private var isResult: Bool = false

    var body: some View {
        ZStack(){
            Color.black.ignoresSafeArea()
            VStack{
                VStack{ //Numbers Display
                    if num1 == "" {
                        Text("0")
                            .foregroundStyle(.white)
                            .font(.system(size: 50, weight: .bold))
                    }
                    
                    if isSelected == false {
                        Text(num1)
                            .foregroundStyle(.white)
                            .font(.system(size: 50, weight: .bold))
                    }else if num2 == "" && isSelected == true{
                        Text("\(num1) \(optionSelected) ")
                            .foregroundStyle(.gray)
                            .font(.system(size: 20, weight: .bold))
                        Text("0")
                            .foregroundStyle(.white)
                            .font(.system(size: 50, weight: .bold))
                    }else if isSelected == true && result == 0.0 && isResult == false{
                        VStack{
                            Text("\(num1) \(optionSelected) ")
                                .foregroundStyle(.gray)
                                .font(.system(size: 20, weight: .bold))
                            Text(num2)
                                .foregroundStyle(.white)
                                .font(.system(size: 50, weight: .bold))
                        }
                    }
                    
                    if (num1 != "" && num2 != "" && isSelected == true && isResult == true) {
                        VStack{
                            Text("\(num1) \(optionSelected) \(num2) ")
                                .foregroundStyle(.gray)
                                .font(.system(size: 20, weight: .bold))

                            Text("\(result, specifier: "%.2f")")
                                .foregroundStyle(.white)
                                .font(.system(size: 50, weight: .bold))
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                .padding(.top, 150)
                
                
                
                buttonsView(result: $result, num1: $num1, num2: $num2, isSelect: $isSelected, optionSelected: $optionSelected, isResulting: $isResult)
                    .frame(maxWidth: .infinity, alignment: .bottom)
                    
            }
        }
    }
    
    
}

#Preview {
    CalculatorView()
}
