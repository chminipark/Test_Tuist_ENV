//
//  Project.swift
//  AManifests
//
//  Created by chminii on 6/25/24.
//

import ProjectDescription

public extension String {
  static func bundleID(_ name: String) -> Self {
    return "test.tuist.\(name)"
  }
}
