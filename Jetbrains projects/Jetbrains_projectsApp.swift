//
//  Jetbrains_projectsApp.swift
//  Jetbrains projects
//
//  Created by Mongi Zaidi on 06/12/2022.
//

import SwiftUI

@main
struct Jetbrains_projectsApp: App {
    @StateObject private var projectsDataSource = ProjectsDataSource()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(projectsDataSource)
                .onAppear(perform: projectsDataSource.fetchProjects)
        }
    }

}
