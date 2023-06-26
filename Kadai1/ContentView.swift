//
//  ContentView.swift
//  kadai1
//
//  Created by Hajime on 6/21/23.
//

import SwiftUI

struct ContentView: View {
    @State var box = (box1:"", box2:"", box3:"", box4:"", box5:"")
    @State var sumNumber = 0
    @State var label = "Label"
    var body: some View {
        HStack {
            VStack {
                TextField("", text: $box.box1, prompt: Text(""))
                    .padding(10.0)
                    .keyboardType(.numberPad)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(hue: 1.0, saturation: 0.016, brightness: 0.898), lineWidth: 2)
                    )
                TextField("", text: $box.box2, prompt: Text(""))
                    .padding(10.0)
                    .keyboardType(.numberPad)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(hue: 1.0, saturation: 0.016, brightness: 0.898), lineWidth: 2)
                    )
                TextField("", text: $box.box3, prompt: Text(""))
                    .padding(10.0)
                    .keyboardType(.numberPad)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(hue: 1.0, saturation: 0.016, brightness: 0.898), lineWidth: 2)
                    )
                TextField("", text: $box.box4, prompt: Text(""))
                    .padding(10.0)
                    .keyboardType(.numberPad)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(hue: 1.0, saturation: 0.016, brightness: 0.898), lineWidth: 2)
                    )
                TextField("", text: $box.box5, prompt: Text(""))
                    .padding(10.0)
                    .keyboardType(.numberPad)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(hue: 1.0, saturation: 0.016, brightness: 0.898), lineWidth: 2)
                    )
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
        let value1 = Int(box.box1) ?? 0
        let value2 = Int(box.box2) ?? 0
        let value3 = Int(box.box3) ?? 0
        let value4 = Int(box.box4) ?? 0
        let value5 = Int(box.box5) ?? 0
        sumNumber = value1 + value2 + value3 + value4 + value5
        label = "\(sumNumber)"
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
