//
//  ContentView.swift
//  DaysofSwift1
//
//  Created by Jason Cox on 6/9/24.
//

import SwiftUI
import Cocoa

struct ContentView: View {
    let age = 18
    let temp = 25
    let userAge = 14
    let hasParentalConsent = true
    enum TransportOption {
        case airplane, helicopter, bicycle, car, escooter
    }
    let transport = TransportOption.airplane
    enum Sizes: Comparable {
        case small
        case medium
        case large
    }

    let firstS = Sizes.small
    let secondS = Sizes.large
    
    enum Weather {
        case sun, rain, wind, snow, unknown
    }
    let forecast = Weather.sun
    
    // var canVote = age >= 18 ? "Yes" : "No"
    
    var body: some View {
        VStack(alignment: .leading) {
                    
            GroupBox("If/Else Statements") {
                if age >= 18 {
                    Text("You can vote!")
                } else {
                    Text("Sorry, you can't vote :(")
                }
                if firstS < secondS {
                    Text("True")
                } else {
                    Text("False")
                }
            }
            .frame(width: 350, alignment: .leading)
            
            GroupBox("Comparators") {
                if temp > 20 && temp < 30 {
                    Text("It's a nice day.")
                }
                if transport == .airplane || transport == .helicopter {
                    Text("Let's fly!")
                } else if transport == .bicycle {
                    Text("I hope there's a bike path…")
                } else if transport == .car {
                    Text("I hate getting stuck in traffic.")
                } else {
                    Text("Let's try the escooter")
                }
                if userAge >= 18 || hasParentalConsent == true {
                    Text("App purchasing allowed")
                    // technically don't need == true
                }
                
            }
            GroupBox("Switch Statements") {
                switch forecast {
                case.sun:
                    Text("It should be a nice day")
                case.rain:
                    Text("Pack an umbrella")
                case.wind:
                    Text("Wear something warm.")
                case.snow:
                    Text("School is cancelled.")
                case.unknown:
                    Text("The forecast generator is broken!")
                }
            }.background(.blue)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
