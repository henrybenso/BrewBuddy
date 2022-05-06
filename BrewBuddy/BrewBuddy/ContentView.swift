//
//  ContentView.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI

struct ContentView: View {

    let color: UIColor = UIColor(

        red: 205/255.0,

        green: 99/255.0,

        blue: 41/255.0,

        alpha: 1

    )

    

    @State var animate: Bool = false

    @State var showSplash: Bool = true

    

    

    var body: some View {
//        Brew()

        VStack {

            ZStack {

                // Content

                ZStack {

//                    Tabs()
                    Brew()

                }

                //Splash Animation

                ZStack {

                    Color(color)

                    

                    Image("logo")

                        .resizable()

                        .aspectRatio(contentMode: .fit)

                        .frame(width: 60, height: 85)

                        .scaleEffect(animate ? 140 : 1)

                        .animation(Animation.easeIn(duration: 0.7))

                }

                .edgesIgnoringSafeArea(.all)

                .animation(Animation.linear(duration: 0.8))

                .opacity(showSplash ? 1 : 0)

            }

        }

        .onAppear {

            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {

                animate.toggle()

            }

            

            DispatchQueue.main.asyncAfter(deadline: .now()+1) {

                showSplash.toggle()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
