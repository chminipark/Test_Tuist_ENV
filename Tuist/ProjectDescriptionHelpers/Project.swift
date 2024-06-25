//
//  Project.swift
//  AManifests
//
//  Created by chminii on 6/25/24.
//

import ProjectDescription

public extension Project {
  static func makeProject(name: String) -> Self {
    let testName = name + "Tests"
    
    return .init(
      name: name,
      targets: [
        .target(
          name: name,
          destinations: .iOS,
          product: .app,
          bundleId: .bundleID(name),
          sources: ["Sources/**"],
          resources: ["Resources/**"]
        ),
        .target(
          name: testName,
          destinations: .iOS,
          product: .unitTests,
          bundleId: .bundleID(testName),
          sources: ["Tests/**"],
          dependencies: [.target(name: name)]
        )
      ]
    )
  }
}

extension String {
  static func bundleID(_ name: String) -> Self {
    return "test.tuist.\(name)"
  }
}
