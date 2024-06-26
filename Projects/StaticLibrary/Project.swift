//
//  Project.swift
//  AManifests
//
//  Created by chminii on 6/25/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let name = "StaticLibrary"

let project: Project = .init(
  name: name,
  targets: [
    .target(
      name: name,
      destinations: .iOS,
      product: .staticLibrary,
      bundleId: .bundleID(name),
      sources: ["Sources/**"]
    )
  ]
)
