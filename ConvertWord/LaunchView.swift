//
//  LaunchView.swift
//  ConvertWord
//
//  Created by vitus on 2022/06/11.
//

import SwiftUI
extension String {
    var decodingUnicodeCharacters: String { applyingTransform(.init("Hex-Any"), reverse: false) ?? "" }
}

//let string = #"\Uacb0\Uc81c\Ub97c \Uc644\Ub8cc\Ud574\Uc8fc\Uc138\Uc694"#
//let c = string.replacingOccurrences(of: "\\U", with: "\\u")
//print(c.decodingUnicodeCharacters)

struct LaunchView: View {
    @State var text :String = ""
    @State var converted: String = ""

    var body: some View {
        GeometryReader { geometry in
            VStack (alignment: .leading, spacing: 0) {
                TextEditor(text: $text)
                    .onChange(of: text) { newValue in
                        convert()
                    }
                TextEditor(text: $converted)
            }
            .onAppear {
                print(geometry.size) //900, 450
            }
            
        }

       
    }
    
    func convert() {
        if text.isEmpty {
            converted =  "입력된 문자가 없습니다."
            return
        }
       let replace =  text.replacingOccurrences(of: "\\U", with: "\\u")
       converted =  replace.decodingUnicodeCharacters
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
