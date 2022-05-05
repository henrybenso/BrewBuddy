//
//  ErrorView.swift
//  BrewBuddy
//
//  Created by henry benso on 5/4/22.
//

import SwiftUI

struct ErrorView: View {
    //@Binding var restricted: Bool
    //@Binding var denied: Bool
    var errorText: String
    
    @State private var textStyle = UIFont.TextStyle.body
    
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
            Text(errorText)
        }
        .padding(8)
        .foregroundColor(.white)
        .background(Color.red)
        //.shadow(color: .black, radius: 5)
    }
}

struct ErrorView_Previews: PreviewProvider {
    //@State static var restricted = true
   // @State static var denied = true
    
    static var previews: some View {
        ErrorView(errorText: "error")
        //ErrorView(restricted: $restricted, denied: $denied)
        //ErrorView(errorViewBool: $errorViewBool)
    }
}
