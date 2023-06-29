//
//  ContentView.swift
//  kadai1
//
//  Created by Hajime on 6/21/23.
//

import SwiftUI

struct ContentView: View {
    @State var textList = ["", "", "", "", ""]
    @State var sumNumber = 0
    @State var label = "Label"
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
                    Text(label)
                        .padding(.top, -5.0)
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
        let value1 = Int(textList[0]) ?? 0
        let value2 = Int(textList[1]) ?? 0
        let value3 = Int(textList[2]) ?? 0
        let value4 = Int(textList[3]) ?? 0
        let value5 = Int(textList[4]) ?? 0
        sumNumber = value1 + value2 + value3 + value4 + value5
        label = "\(sumNumber)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
