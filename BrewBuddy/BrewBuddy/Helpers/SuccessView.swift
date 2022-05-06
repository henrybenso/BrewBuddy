//
//  SuccessView.swift
//  BrewBuddy
//
//  Created by henry benso on 5/5/22.
//

import SwiftUI


struct SuccessView: View {
    
    @State private var textStyle = UIFont.TextStyle.body
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
            Text("Success!")
        }
        .padding(8)
        .foregroundColor(.white)
        .background(Color.green)
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
