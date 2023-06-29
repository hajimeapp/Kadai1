//
//  ContentView.swift
//  kadai1
//
//  Created by Hajime on 6/21/23.
//

import SwiftUI

struct ContentView: View {
    @State var textList = ["", "", "", "", ""]
    @State var sumNumber: Int?
    var body: some View {
        HStack {
            VStack {
                ForEach(textList.indices, id: \.self) { index in
                    TextField("", text: $textList[index], prompt: Text(""))
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                }

                Button {
                   calculateSum()
                } label: {
                    Text("Button")
                }
                HStack {
                    if let sumNumber = sumNumber {
                        Text(String(sumNumber))
                            .padding(.top, -5.0)
                    } else {
                        Text("Label")
                            .padding(.top, -5.0)
                    }
                    Spacer()
                }
                Spacer()
            }
                .padding()
            Spacer()
                .padding(.leading)
        }
    }
    
    func calculateSum() {
        var total = 0
        for text in textList {
            total += Int(text) ?? 0
        }
        sumNumber = total
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
