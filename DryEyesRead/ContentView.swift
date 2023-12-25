//
//  ContentView.swift
//  DryEyesRead
//
//  Created by Pieter Yoshua Natanael on 14/12/23.
//

import SwiftUI


struct ContentView: View {
    @State var toggleIsOn : Bool = false
    @State private var inputText: String = ""
    @State private var fontSize: CGFloat = 20.0

    var body: some View {
        NavigationStack {
            
            
            ZStack{
                
                //background
//                Color.black
//                    .ignoresSafeArea()
                
                //content
                VStack {
                    TextEditor(text: $inputText)
//                        .scrollContentBackground(toggleIsOn ? .hidden : .visible)
//                        .background(toggleIsOn ? .gray : .clear)
                        .padding()
                        .foregroundColor(toggleIsOn ? Color(#colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)) : .primary)
                        //.monospaced()
                        .font(.system(size: fontSize))
                    
                    HStack {
                        Button("Make Smaller")
                            {adjustFontSize(smaller: true)}
                        .padding()
                            .background(Color.blue) // Set the background color
                            .foregroundColor(.white) // Set the text color
                            .font(.headline) // Set the font style
                            .cornerRadius(10)
//                        Spacer()
                        
                        Button("Make Bigger") {
                            adjustFontSize(smaller: false)
                        }
                        .padding()
                        
                            .background(Color.blue) // Set the background color
                            .foregroundColor(.white) // Set the text color
                            .font(.headline) // Set the font style
                            .cornerRadius(10)
                        
//                        Spacer()
                        
                        
                            
                            Toggle(isOn: $toggleIsOn,
                                   label: {
                                Text("Dry Eye Mode")
                            }
                                   
                            )
                        
                    }
                }
                
                .padding()
                .navigationTitle("Dry Eye Read")
            }
        }
    }

    func adjustFontSize(smaller: Bool) {
        if smaller {
            fontSize -= 5.0
        } else {
            fontSize += 5.0
        }
    }
}

struct DryEyesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
