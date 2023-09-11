/// Copyright (c) 2023 Kodeco Inc.


import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var redColor: Double = 0.0
  @State private var greenColor: Double = 0.0
  @State private var blueColor: Double = 0.0
  @State private var foregroundColor = Color(red: 0, green: 0, blue: 0)

  var body: some View {

    VStack {
      Text("Color Picker")
        .font(.largeTitle)
        .bold()

      RoundedRectangle(cornerRadius: 0)
        .foregroundColor(foregroundColor)
        .border(Color.brown, width: 10)
      VStack {
        Text("Red")
        HStack {
          Slider(value: $redColor, in: 0...255)
            .accentColor(.red)
          Text("\(Int(redColor.rounded()))")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 20)
      }
      VStack {
        Text("Green")
        HStack {
          Slider(value: $greenColor, in: 0...255)
            .accentColor(.green)
          Text("\(Int(greenColor.rounded()))")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 20)
      }
      VStack {
        Text("Blue")
        HStack {
          Slider(value: $blueColor, in: 0...255)
            .accentColor(.blue)
          Text("\(Int(blueColor.rounded()))")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 20)
      }
      Button("Set Color") {
        foregroundColor = Color(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255)
      }
    }
    .background(Color.white)
    .padding(20)

  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
  }
}
