//
//  ContentView.swift
//  App
//
//  Created by chminii on 6/25/24.
//

import SwiftUI
import StaticLibrary

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Test tuist with using environment variables")
      Text("Fetch ENV.api_key : \(ENV.api_key)")
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
