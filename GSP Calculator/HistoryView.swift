//
//  HistoryView.swift
//  GSP Calculator
//
//  Created by gabriel subutzki portes on 13/09/25.
//

import SwiftUI

struct HistoryView: View {
    @State var showFrame: Bool = true
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            HStack {
                if showFrame {
                    FrameContent()
                }
                
                Button {
                    showFrame.toggle()
                } label: {
                    Image(systemName: "text.justify")
                        .foregroundStyle(.white)
                        .font(.system(size: 25))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
            }
            
        }
    }
}

struct FrameContent: View {
    var body: some View {
        ScrollView{
            VStack{
                
            }
            .frame(width: 200, height: 300 ,alignment: .center)
            .padding(.top,100)
            .padding(.leading,30)
            
        }
    }
    
}

#Preview {
    HistoryView()
}
