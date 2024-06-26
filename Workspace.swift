//
//  Workspace.swift
//  Packages
//
//  Created by chminii on 6/25/24.
//

import ProjectDescription

let workspace: Workspace = .init(
  name: "TEST_TUIST_ENV",
  projects: [.relativeToRoot("Projects/App")]
)
