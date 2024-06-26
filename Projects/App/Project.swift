//
//  Project.swift
//  Packages
//
//  Created by chminii on 6/25/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let name = "App"

let project: Project = .init(
  name: name,
  targets: [
    .target(
      name: name,
      destinations: .iOS,
      product: .app,
      bundleId: .bundleID(name),
      sources: ["Sources/**"],
      resources: ["Resources/**"],
      dependencies: [
        .project(
          target: "StaticLibrary",
          path: .relativeToRoot("Projects/StaticLibrary")
        )
      ]
    )
  ]
)
