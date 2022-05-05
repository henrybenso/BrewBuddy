//
//  RequestLocationView.swift
//  BrewBuddy
//
//  Created by henry benso on 5/4/22.
//

import SwiftUI

struct RequestLocationView: View {
    
    @EnvironmentObject var locationViewModel: LocationViewModel
    var body: some View {
        Button {
                print("allowing permissions")
                locationViewModel.requestPermission()
            } label: {
                Image(systemName: "location")
            }
            .padding(10)
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        Text("We need your permission to track you.")
            .foregroundColor(.gray)
            .font(.caption)
    }
}

struct RequestLocationView_Previews: PreviewProvider {
    static var previews: some View {
        RequestLocationView()
    }
}
