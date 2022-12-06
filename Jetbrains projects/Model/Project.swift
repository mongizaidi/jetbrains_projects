//
//  Project.swift
//  Jetbrains projects
//
//  Created by Mongi Zaidi on 06/12/2022.
//

import Foundation

struct Project: Identifiable, Decodable {
    let id: Int
    let full_name: String
    let forks: Int
    let open_issues: Int
    let watchers: Int
    let description: String?
}
