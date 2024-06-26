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
    VStack(spacing: 30) {
      Text("""
Test tuist with inject and using environment variables
I used default template of resource accessors and inject plist file in Resources/Env/Env.plist

default template : https://github.com/tuist/tuist/blob/main/Sources/TuistGenerator/Templates/PlistsTemplate.swift
tuist docs : https://docs.tuist.io/guide/project/synthesized-files.html#resource-accessors
"""
      )
      Text("Fetch api_key : \(Env.apiKey)")
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
