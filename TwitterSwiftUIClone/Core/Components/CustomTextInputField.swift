//
//  CustomTextInputField.swift
//  TwitterSwiftUIClone
//
//  Created by Linval Muchapirei on 27/3/2023.
//

import SwiftUI

struct CustomTextInputField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20,height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholderText,text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomTextInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextInputField(
            imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
