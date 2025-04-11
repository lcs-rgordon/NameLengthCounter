//
//  ContentView.swift
//  NameLengthCounter
//
//  Created by Russell Gordon on 2025-04-11.
//

import SwiftUI

struct NameListView: View {
    
    // MARK: Stored properties
    
    @State var nameProvided: String = ""
    @State var nameLength: Int = 0
    
    // Keep track of counts done
    @State var history: [NameInfo] = []
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            
            TextField("Enter your name", text: $nameProvided)
                .textFieldStyle(.roundedBorder)
            
            Text("Length of name is: \(nameLength)")
            
            Button {
                
                // Count letters
                nameLength = lengthOfName(name: nameProvided)
                
                // Add to the history
                let newNameInfo = NameInfo(
                    name: nameProvided,
                    countOfLetters: nameLength
                )
                history.append(newNameInfo)
                
                
            } label: {
                Text("Count")
            }
            
            // Show the history
            List(history) { previousName in
                HStack {
                    Text(previousName.name)
                        .bold()
                    Spacer()
                    Text("\(previousName.countOfLetters)")
                        .font(.largeTitle)
                        .bold()
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    NameListView()
}
